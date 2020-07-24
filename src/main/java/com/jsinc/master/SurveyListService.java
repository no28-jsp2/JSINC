package com.jsinc.master;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDTO.SurveyDTO;

// 설문 관리 페이지 서비스
@Service
public class SurveyListService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	// by성택_썰문 전체 리스트_20200616
	@Override
	public void execute(Model model) {
		ArrayList<SurveyDTO> list = (ArrayList<SurveyDTO>) dao.listSur();
		model.addAttribute("list", list);
	}

}
