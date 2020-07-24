package com.jsinc.master;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDTO.MemberDTO;

// 사원 정보 수정 서비스
@Service
public class MemberEditService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	// by성택_사원 정보 수정하기_20200615
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("member");
		dto.setName(request.getParameter("name"));
		dto.setBirth(request.getParameter("birth"));
		dto.setUserEmail(request.getParameter("email"));
		dto.setPhoneNumber(request.getParameter("pn"));
		dto.setGender(request.getParameter("gender"));
		dto.setRank(request.getParameter("rank"));
		dto.setDep(request.getParameter("dep"));
		dao.edit(dto);
		session.removeAttribute("member");
	}

}
