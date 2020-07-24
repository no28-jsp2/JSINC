package com.jsinc.master;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

// 커뮤니티 승인 서비스
@Service
public class CommunityPermissionService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	//by성택_커뮤니티 승인_20200616
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		dao.permissionCom(request.getParameter("title"));
	}

}
