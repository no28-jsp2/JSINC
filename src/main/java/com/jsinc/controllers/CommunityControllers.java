package com.jsinc.controllers;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jsinc.jsincDTO.CommunityDTO;
import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.service.community.AllServiceImpl;
import com.jsinc.service.community.ContentGetServiceImpl;
import com.jsinc.service.community.ContentSaveServiceImpl;
import com.jsinc.service.community.CreateServiceImpl;
import com.jsinc.service.community.LeaveServiceImpl;
import com.jsinc.service.community.MyServiceImpl;
import com.jsinc.service.community.ServiceCom;
import com.jsinc.service.community.SignUpServiceImpl;
import com.jsinc.service.community.ViewServiceImpl;

@Controller
public class CommunityControllers {
	ApplicationContext ac = App.ac;
	private ServiceCom service;

	// 커뮤니티 만들기
	@RequestMapping("createCommunity")
	public String createCommunity() {
		return "community/createCommunity";
	}

	// 전체 커뮤니티
	@RequestMapping("allCommunity")
	public String allCommunity(HttpServletRequest req, Model model) {
		model.addAttribute("request", req);
		service = ac.getBean("allServiceImpl", AllServiceImpl.class);
		service.getExe(model);

		return "community/allCommunity";
	}

	// 가입 커뮤니티
	@RequestMapping("joinCommunity")
	public String joinCommunity(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		service = ac.getBean("myServiceImpl", MyServiceImpl.class);
		service.getExe(model);

		return "community/joinCommunity";
	}

	// 커뮤니티를 만들었을 경우 데이터 넘어옴
	@RequestMapping("submitCom")
	public String submitCom(HttpSession session, CommunityDTO dto) {
		ServletContext application = session.getServletContext();
		MemberDTO memDto = (MemberDTO) application.getAttribute("user");
		int empNo = memDto.getEmpNo();
		String name = memDto.getName();
		dto.setEmpNo(empNo);
		dto.setname(name);
		dto.setRank(memDto.getRank());
		service = ac.getBean("createServiceImpl", CreateServiceImpl.class);
		service.execute(dto);
		return "redirect:allCommunity";
	}

	// 해당 커뮤니티에 입장시
	@RequestMapping(value = "viewCom", method = RequestMethod.GET)
	public String viewCom(HttpServletRequest request, Model model) {
		String cno = request.getParameter("cno");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		if (content != null) {
			System.out.println("content내용 추가 시 동작함 : " + content);
			model.addAttribute("request", request);
			// 추가
			service = ac.getBean("contentSaveServiceImpl", ContentSaveServiceImpl.class);
			service.getExe(model);
		}

		System.out.println("게시글 내용:" + content);
		System.out.println("커뮤니티 번호 : " + cno);
		System.out.println("title:" + title);
		model.addAttribute("request", request);
		model.addAttribute("cno", cno);
		service = ac.getBean("viewServiceImpl", ViewServiceImpl.class);
		service.getExe(model);
		// 내용 가져오기
		service = ac.getBean("contentGetServiceImpl", ContentGetServiceImpl.class);
		service.getExe(model);


		return "community/viewCom";
	}

	// 해당 커뮤니티에 가입하기 버튼을 누를 시
	@RequestMapping(value = "signUp", method = RequestMethod.GET)
	public String signUp(HttpServletRequest request, Model model) {
		service = ac.getBean("signUpServiceImpl", SignUpServiceImpl.class);
		model.addAttribute("request", request);
		service.getExe(model);
		String title = request.getParameter("title");
		System.out.println("title" + title);
		return "redirect:allCommunity";
	}

	// 댓글 등록
	@RequestMapping("reply")
	public String reply(Model model, HttpServletRequest request) {
		String cno = (String) request.getParameter("cno");
		String idgroup = (String) request.getParameter("idgroup");
		System.out.println(cno);
		System.out.println(idgroup);

		return "redirect:viewCom";
	}

	// 회원탈퇴
	@RequestMapping("leave")
	public String leave(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("leaveServiceImpl", LeaveServiceImpl.class);
		service.getExe(model);
		return "redirect:allCommunity";
	}

}
