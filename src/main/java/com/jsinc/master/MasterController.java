package com.jsinc.master;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.controllers.App;

@Controller
public class MasterController {
	ApplicationContext ac = App.ac;
	ServiceIf service;
	
	@RequestMapping("memberMng")
	public String memberMng(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("memberMngService", MemberMngService.class);
		service.execute(model);
		return "master/memberMng";
	}
	
	@RequestMapping("memberInfo")
	public String memberInfo() {
		return "master/memberInfo";
	}
}
