package com.jsinc.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.jsincDTO.SignDTO;
import com.jsinc.services.sign.signService;

@Controller
public class SignController {
	ApplicationContext ac = App.ac;

	@Autowired
	signService ss;
	
	@RequestMapping("newSign")
	public String newSign() {
		return "sign/new";
	}
	@RequestMapping(value="signInsert",method = RequestMethod.POST)
	public String signInsert(@ModelAttribute SignDTO dto) {
		ss.createSign(dto);
		return "redirect:signWait";
	}
	@RequestMapping("signAproved")
	public String signAproved() {
		
		return "sign/aproved";
	}
	@RequestMapping("signSuccess")
	public ModelAndView signSuccess() {
		List<SignDTO> list = ss.lists();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sign/success");
		mav.addObject("sign", list);
		return mav;
	}
	@RequestMapping("signWait")
	public ModelAndView signWaiting(@ModelAttribute MemberDTO dto) {
		int empno = dto.getEmpNo();
		List<SignDTO> list = ss.waitList(empno);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("sign/waiting");
		mav.addObject("sign",list);
		return mav;
	}
	
	
	
}
