package com.jsinc.services.main;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.SurveyDAO;
import com.jsinc.jsincDTO.SurveyDTO;

@Service
public class ResentSurveyService implements ComponentService{
	@Autowired
	SurveyDAO dao;
	
	@Override
	public void execute(Model model) {
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String time = format.format(date);
		ArrayList<SurveyDTO> list = (ArrayList<SurveyDTO>) dao.todayList(time);
		for(SurveyDTO dto2 : list) {
			String text = dto2.getText();
			text = text.replace("\n", "<br>");
			dto2.setText(text);
		}
		model.addAttribute("list", list);
	}

}
