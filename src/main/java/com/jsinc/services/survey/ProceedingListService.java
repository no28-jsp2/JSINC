package com.jsinc.services.survey;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.SurveyDAO;
import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.jsincDTO.SurveyDTO;
import com.jsinc.jsincDTO.SurveyResultDTO;

// 진행중인 설문 리스트 서비스
@Service
public class ProceedingListService implements ServiceIf {
	@Autowired
	SurveyDAO dao;
	
	// by성택_진행중인 설문 리스트 가져오기_20200608
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		ServletContext application = session.getServletContext();
		MemberDTO dto_mem = (MemberDTO) application.getAttribute("user");
		
		// by성택_마감 날짜 확인을 위해 현재시간 생성_20200611 추가
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy.MM.dd ");
		SimpleDateFormat time = new SimpleDateFormat(":mm:ss");
		String now = format.format(date) + date.getHours() + time.format(date); // 시간을 24h로 표현하기 위함
		
		ArrayList<SurveyDTO> list = (ArrayList<SurveyDTO>) dao.list("진행중");	// 진행중인 모든 설문 리스트
		
		ArrayList<SurveyDTO> gList = new ArrayList<SurveyDTO>();
		ArrayList<SurveyDTO> rList = new ArrayList<SurveyDTO>();

		int result = 0;
		for (SurveyDTO dto : list) {
				// by성택_현재시간이 마감시간을 지나면 상태를 '마감됨'으로 변경_20200611 추가
				if (now.compareTo(dto.geteDate()) == 1){
					dto.setState("마감됨");
					dao.endChk(dto);
					continue;
				}
			
			// 참여 여부에 따라 rList와 gList로 분리
			SurveyResultDTO dto_sr = new SurveyResultDTO();
			dto_sr.setEmpNo(dto_mem.getEmpNo());
			dto_sr.setTitle(dto.getTitle());
			result = dao.resultChk(dto_sr);
			if (result == 1)
				rList.add(dto);
			else
				gList.add(dto);

		}
		model.addAttribute("gList", gList);
		model.addAttribute("rList", rList);
	}
}
