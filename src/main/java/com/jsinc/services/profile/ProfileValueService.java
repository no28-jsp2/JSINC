package com.jsinc.services.profile;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.AttendanceDAO;
import com.jsinc.jsincDTO.AttendanceDTO;
import com.jsinc.jsincDTO.MemberDTO;

// 프로필 값 서비스
@Service
public class ProfileValueService implements ServiceIf {
	@Autowired
	AttendanceDAO dao;

	// by성택_현재 날짜 기준 월 근무일 수,월 총 근무시간 구하기_20200527
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		double totWorkTime = 0.0; // 총 근무 시간
		int workDays = 0; // 총 근무일 수

		HttpSession session = request.getSession();
		ServletContext application = session.getServletContext();
		MemberDTO member = (MemberDTO) application.getAttribute("user");
		String month = (String) application.getAttribute("loginMonth"); // 로그인할 때 월 가져오기
		String user = member.getEmpNo() + "";

		ArrayList<AttendanceDTO> listAll = (ArrayList<AttendanceDTO>) dao.list(user); // month월에 근무한 근무기록 리스트 가져오기
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy.");
		String years = format.format(date);
		for (int i = 0; i < listAll.size(); i++) {
			if (listAll.get(i).getGoWork().substring(0, 7).equals(years + month)) {
				workDays++;
				totWorkTime += listAll.get(i).getWorkTime();
			}
		}
		application.setAttribute("workTimes", String.format("%.1f", totWorkTime));
		application.setAttribute("workDays", workDays + "");
	}

}