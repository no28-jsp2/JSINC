package com.jsinc.master;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDTO.MemberDTO;

// 사원 정보 서비스
@Service
public class MemberInfoService implements ServiceIf {
	@Autowired
	MasterDAO dao;
	
	// by성택_사원 정보_20200615
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		int empNo = Integer.parseInt(request.getParameter("empNo"));
		session.setAttribute("member", dao.member(empNo));
	}

}
