package com.jsinc.service.community;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.CommunityDAO;
import com.jsinc.jsincDTO.CommunityConDTO;
import com.jsinc.jsincDTO.CommunityDTO;

@Service
public class ContentGetServiceImpl implements ServiceCom {
	@Autowired
	CommunityDAO dao;

	@Override
	public void execute(CommunityDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getExe(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		int cno = Integer.parseInt(request.getParameter("cno"));
		ArrayList<CommunityConDTO> list = (ArrayList<CommunityConDTO>) dao.contentGet(cno);

		
		System.out.println(list.size());
		model.addAttribute("conList", list);

	}

}
