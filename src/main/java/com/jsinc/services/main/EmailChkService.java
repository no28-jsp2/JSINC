package com.jsinc.services.main;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;

// 이메일 중복확인 서비스
@Service
public class EmailChkService implements ServiceIf {
	@Autowired
	MemberDAO dao;

	// by해준_이메일 중복체크 메소드_20200522
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("req");
		String userEmail = (String) request.getParameter("userEmail");
		return dao.emailChk(userEmail); // 이메일이 존재하면 1, 없으면 0
	}
}
