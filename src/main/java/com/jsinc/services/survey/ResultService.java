package com.jsinc.services.survey;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.SurveyDAO;
import com.jsinc.jsincDTO.SurveyDTO;
import com.jsinc.jsincDTO.SurveyResultDTO;

// 설문 결과 페이지 서비스
@Service
public class ResultService implements ServiceIf {

	@Autowired
	SurveyDAO dao;

	// by성택_설문 결과 보기_20200611
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();

		String title = request.getParameter("title");
		SurveyDTO dto = dao.survey(title);
		String text = dto.getText();
		text = text.replace("\n", "<br>");
		dto.setText(text);
		int opt = dto.getOpt();
		SurveyResultDTO dto_sr = new SurveyResultDTO();
		dto_sr.setTitle(title);
		model.addAttribute("total", dao.resultAll(title)); // 설문 총 참여자 수
		// 옵션별 응답자 수 구하기
		for (int i = 1; i <= opt; i++) {
			dto_sr.setResult(Integer.toString(i));
			model.addAttribute("answer" + i, dao.answerCnt(dto_sr));
		}
		model.addAttribute("opt", opt);
		session.setAttribute("survey", dto);
	}
}
