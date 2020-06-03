package com.jsinc.services.survey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.SurveyDAO;

@Service
public class EndListService implements ServiceIf {
	@Autowired
	SurveyDAO dao;
	
	@Override
	public void execute(Model model) {
		
	}
	
}
