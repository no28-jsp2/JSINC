package com.jsinc.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.services.survey.CreateSurveyService;
import com.jsinc.services.survey.ProceedingListService;
import com.jsinc.services.survey.ServiceIf;
import com.jsinc.services.survey.SurveyService;

@Controller
public class SurveyController {
	ApplicationContext ac = App.ac;
	ServiceIf service;
	
	@RequestMapping("startedSurvey")
	public String startedSurvey(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("proceedingListService", ProceedingListService.class);
		service.execute(model);
		return "survey/startedSurvey";
	}
	
	@RequestMapping("createSurvey")
	public String createSurvey() {
		return "survey/createSurvey";
	}
	
	@RequestMapping("endSurvey")
	public String endSurvey() {
		return "survey/endSurvey";
	}
	
	@RequestMapping("mySurvey")
	public String mySurvey() {
		return "survey/mySurvey";
	}
	
	@RequestMapping("surveyInput")
	public String surveyInput(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("createSurveyService", CreateSurveyService.class);
		service.execute(model);
		return "redirect:startedSurvey";
	}
	
	@RequestMapping("survey")
	public String survey(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("surveyService", SurveyService.class);
		service.execute(model);
		return "survey/survey";
	}
}
