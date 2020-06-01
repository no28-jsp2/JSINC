package com.jsinc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("allCompany")
	public String allCompany() {
		
		return "allCompany";
	}
	@RequestMapping("department")
	public String department() {
		
		return "department";
	}
	@RequestMapping("reference")
	public String reference() {
		
		return "reference";
	}
}
