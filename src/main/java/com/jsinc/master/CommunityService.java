package com.jsinc.master;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDTO.CommunityDTO;

@Service
public class CommunityService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		ArrayList<CommunityDTO> list = (ArrayList<CommunityDTO>) dao.listCom();
		model.addAttribute("list", list);
		
	}

}
