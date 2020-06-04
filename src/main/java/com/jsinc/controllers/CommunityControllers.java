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
import com.jsinc.service.community.CreateServiceImpl;
import com.jsinc.service.community.MyServiceImpl;
import com.jsinc.service.community.ServiceCom;

@Controller
public class CommunityControllers {
	ApplicationContext ac = App.ac;
	private ServiceCom service;
	
	
	//커뮤니티 만들기
	@RequestMapping("createCommunity")
	public String createCommunity() {
		return "community/createCommunity";
	}
	//전체 커뮤니티
	@RequestMapping("allCommunity")
	public String allCommunity(Model model) {
		service=ac.getBean("allServiceImpl",AllServiceImpl.class);
		service.getExe(model);
		
		return "community/allCommunity";
	}
	//가입 커뮤니티
	@RequestMapping("joinCommunity")
	public String joinCommunity(HttpServletRequest request,Model model) {
		model.addAttribute("request",request);
		service =ac.getBean("myServiceImpl",MyServiceImpl.class);
		service.getExe(model);
		return "community/joinCommunity";
	}
	//커뮤니티를 만들었을 경우 데이터 넘어옴
	@RequestMapping("submitCom")
	public String submitCom(HttpSession session,CommunityDTO dto) {
		ServletContext application = session.getServletContext();
		MemberDTO memDto =(MemberDTO)application.getAttribute("user");
		int empNo=memDto.getEmpNo();
		String name=memDto.getName();
		dto.setEmpNo(empNo);
		dto.setname(name);
		service = ac.getBean("createServiceImpl",CreateServiceImpl.class);
		service.execute(dto);
		return "redirect:allCommunity";
	}
	//해당 커뮤니티에 입장시
	@RequestMapping(value="viewCom",method = RequestMethod.GET)
	public String viewCom() {
		
		return "community/viewCom";
	}
	
	
	//해당 커뮤니티에 가입하기 버튼을 누를 시
	@RequestMapping(value="signUp",method = RequestMethod.GET)
	@ResponseBody
	public String signUp() {
		
		return "asd";
	}
	
	
	
	
}
