package com.jsinc.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.services.survey.CreateSurveyService;
import com.jsinc.services.survey.EndListService;
import com.jsinc.services.survey.MyListService;
import com.jsinc.services.survey.ProceedingListService;
import com.jsinc.services.survey.ResultService;
import com.jsinc.services.survey.ServiceIf;
import com.jsinc.services.survey.SurveyResultService;
import com.jsinc.services.survey.SurveyService;

// 설문 컨트롤러
@Controller
public class SurveyController {
	ApplicationContext ac = App.ac;
	ServiceIf service;

	// by성택_진행중인 설문 리스트_20200608
	@RequestMapping("startedSurvey")
	public String startedSurvey(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("proceedingListService", ProceedingListService.class);
		service.execute(model);
		return "survey/startedSurvey";
	}
	
	// by성택_새 설문 작성 페이지_20200609
	@RequestMapping("createSurvey")
	public String createSurvey() {
		return "survey/createSurvey";
	}
	
	// by성택_마감된 설문 리스트_20200608
	@RequestMapping("endSurvey")
	public String endSurvey(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("endListService", EndListService.class);
		service.execute(model);
		return "survey/endSurvey";
	}
	
	// by성택_내가 만든 설문_20200609
	@RequestMapping("mySurvey")
	public String mySurvey(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("myListService", MyListService.class);
		service.execute(model);
		return "survey/mySurvey";
	}
	
	// by성택_설문 등록하기_20200609
	@RequestMapping("surveyInput")
	public String surveyInput(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("createSurveyService", CreateSurveyService.class);
		service.execute(model);
		return "redirect:startedSurvey";
	}
	
	// by성택_설문 응답 페이지 들어가기_20200610
	@RequestMapping("survey")
	public String survey(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("surveyService", SurveyService.class);
		service.execute(model);
		return "survey/survey";
	}

	// by성택_설문 결과 등록_20200610
	@RequestMapping("surveyResult")
	public String surveyResult(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("surveyResultService", SurveyResultService.class);
		service.execute(model);
		return "redirect:startedSurvey";
	}
	
	// by성택_설문 결과 페이지_20200611
	@RequestMapping("result")
	public String result(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("resultService", ResultService.class);
		service.execute(model);
		return "survey/result";
	}
}
