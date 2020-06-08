package com.jsinc.controllers;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReportController {
	
	ApplicationContext ac = App.ac;
	
	@RequestMapping("dayReport")
	public String day() {
		return "report/day";
	}
	@RequestMapping("weekReport")
	public String week() {
		return "report/week";
	}
	@RequestMapping("workReport")
	public String work() {
		return "report/work";
	}
	@RequestMapping("writeReport")
	public String writeReport() {
		return "report/writeReport";
	}
//	@RequestMapping(value = "write" , method = RequestMethod.POST)
//	public void write(){
//		
//	}
	
	
	
}
