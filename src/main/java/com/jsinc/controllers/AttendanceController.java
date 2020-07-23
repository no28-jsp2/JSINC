package com.jsinc.controllers;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.jsincDTO.AttendanceDTO;
import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.services.attendance.AttendanceListService;
import com.jsinc.services.attendance.GoWorkService;
import com.jsinc.services.attendance.LeaveWorkService;
import com.jsinc.services.attendance.ServiceIf;

// 출&퇴근 Controller
@Controller
public class AttendanceController {
	ApplicationContext ac = App.ac;
	AttendanceDTO dto_att = new AttendanceDTO(); // 사원의 출&퇴근 시간 기록을 저장하는 dto
	private ServiceIf service;

	// by성택_출/퇴근 페이지_20200523
	@RequestMapping("attendance")
	public String attendance(Model model) {
		return "attendance/attendance";
	}

	// by성택_출근시 dto_att에 출근시간 기록_20200523
	@RequestMapping("goWork")
	public String goWork(HttpSession session, Model model) {
		ServletContext application = session.getServletContext();
		// 출근 시간 기록이 저장되는 start라는 application 변수가 비어있을 때 출근 버튼이 동작한다.
		if (application.getAttribute("start") == null) {
			MemberDTO dto_mem = (MemberDTO) application.getAttribute("user");
			this.dto_att.setEmpNo(dto_mem.getEmpNo());
			model.addAttribute("dto_att", this.dto_att);
			service = ac.getBean("goWorkService", GoWorkService.class);
			dto_att = service.execute(model);
			application.setAttribute("start", dto_att); // 출근시각 보이기 위해 application변수에 set
		}
		return "redirect:attendance";
	}

	// by성택_퇴근시 퇴근시간 기록과 근무시간 DB에 저장_20200524
	@RequestMapping("leaveWork")
	public String leaveWork(HttpSession session, Model model) {
		ServletContext application = session.getServletContext();
		// 출근 시간이 기록되어있고 퇴근 시간이 없는 경우에 동작한다.
		if (application.getAttribute("start") != null) {
			if (application.getAttribute("end") == null) {
				model.addAttribute("dto_att", this.dto_att);
				service = ac.getBean("leaveWorkService", LeaveWorkService.class);
				dto_att = service.execute(model);
				application.setAttribute("end", dto_att); // 퇴근시각 보이기 위해 application변수에 set
			}
		}
		return "redirect:attendance";
	}

	// by성택_출/퇴근 기록 리스트 보기_20200524
	@RequestMapping("list")
	public String list(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("attendanceListService", AttendanceListService.class);
		service.execute(model);
		return "redirect:attendance";
	}
}