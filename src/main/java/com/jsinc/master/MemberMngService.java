package com.jsinc.master;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDTO.MemberDTO;

// 사원 관리 페이지 서비스
@Service
public class MemberMngService implements ServiceIf{
	@Autowired
	MasterDAO dao;
	
	// by성택_회사 전 사원 리스트_20200613
	@Override
	public void execute(Model model) {
		ArrayList<MemberDTO> list = (ArrayList<MemberDTO>) dao.list();
		model.addAttribute("list", list);
	}

}
