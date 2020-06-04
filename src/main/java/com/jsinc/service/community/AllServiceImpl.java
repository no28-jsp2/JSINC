package com.jsinc.service.community;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.CommunityDAO;
import com.jsinc.jsincDTO.AttendanceDTO;
import com.jsinc.jsincDTO.CommunityDTO;

@Service
public class AllServiceImpl implements ServiceCom{
	@Autowired
	CommunityDAO dao;

	@Override
	public void execute(CommunityDTO dto) {
		// TODO Auto-generated method stub
		
	}

	//전체 커뮤니티 리스트를 가져온다.
	@Override
	public void getExe(Model model) {
		ArrayList<CommunityDTO> list=(ArrayList<CommunityDTO>)dao.allCom();
		model.addAttribute("allList",list);
	
	}
	
	
	
}
