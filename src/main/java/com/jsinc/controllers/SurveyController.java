package com.jsinc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SurveyController {
	@RequestMapping("startedSurvey")
	public String startedSurvey() {
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
}
