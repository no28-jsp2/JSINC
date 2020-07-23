package com.jsinc.services.survey;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.SurveyDAO;
import com.jsinc.jsincDTO.SurveyDTO;

// 마감된 설문 리스트 서비스
@Service
public class EndListService implements ServiceIf {
	@Autowired
	SurveyDAO dao;
	
	// by성택_마감된 설문 리스트_20200608
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		ArrayList<SurveyDTO> list = (ArrayList<SurveyDTO>) dao.list("마감됨");
		model.addAttribute("endList", list);
	}
	
}
