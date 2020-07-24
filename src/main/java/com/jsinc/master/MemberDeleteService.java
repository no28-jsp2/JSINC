package com.jsinc.master;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

// 사원 삭제 서비스
@Service
public class MemberDeleteService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	// by성택_사원 삭제_20200615
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		Map<String , Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int empNo = Integer.parseInt(request.getParameter("empNo"));
		dao.delete(empNo);
	}
}
