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
public class ContentGetServiceImpl implements ServiceCom{
	@Autowired
	CommunityDAO dao;
	@Override
	public void execute(CommunityDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getExe(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request= (HttpServletRequest)map.get("request");
		String coNo = (String)request.getParameter("cno");
		int cno =Integer.parseInt(coNo);
		ArrayList<CommunityConDTO> list = (ArrayList<CommunityConDTO>) dao.contentGet(cno);
		
		
		if(list.size()==0) {
			System.out.println(list.size());
			model.addAttribute("chk",1);
			model.addAttribute("conList",list);
			
		}else if(list.size()!=0) {
			System.out.println(list.size());
			model.addAttribute("conList",list);
		
		}
		
	}

}
