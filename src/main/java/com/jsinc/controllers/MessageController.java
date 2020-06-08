package com.jsinc.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.jsincDTO.MessageDTO;

@Controller
public class MessageController {
	@RequestMapping("sentMessage")
	public String sentMessage() {
		return "message/sentView";
	}
	
	@RequestMapping("RecMessage")
	public String RecMessage() {
		return "message/RecView";
	}
	@RequestMapping("mesWriteView")
	public String mesWriteView(Model model,HttpServletRequest request) {
		String name=request.getParameter("name");
		int empNo=Integer.parseInt(request.getParameter("empNo"));
		String rank=request.getParameter("rank");
		String dep=request.getParameter("dep");
		ArrayList<String> arr = new ArrayList<String>();
		MessageDTO dto = new MessageDTO();
		dto.setName(name);
		dto.setEmpNo(empNo);
		dto.setDep(dep);
		dto.setRank(rank);
		
		System.out.println(name);
		System.out.println(empNo);
		System.out.println(rank);
		System.out.println(dep);
		
		model.addAttribute("emp",dto);
		
		
		
		
		return "message/mesWriteView";
	}
}
