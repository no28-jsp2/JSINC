package com.jsinc.master;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class CommunityDeleteService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	// 커뮤니티 승인 취소 & 삭제
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		dao.delCom(request.getParameter("title"));
	}
}
