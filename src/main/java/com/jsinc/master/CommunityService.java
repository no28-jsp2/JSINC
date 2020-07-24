package com.jsinc.master;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.CommunityDAO;
import com.jsinc.jsincDTO.CommunityDTO;

// 커뮤니티 승인 관리 리스트 서비스
@Service
public class CommunityService implements ServiceIf {
	@Autowired
	MasterDAO dao;
	@Autowired
	CommunityDAO com_dao;

	// by성택_커뮤니티 승인 관리 리스트_20200616
	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		ArrayList<CommunityDTO> list = (ArrayList<CommunityDTO>) dao.listCom();
		ArrayList<CommunityDTO> lists = new ArrayList<CommunityDTO>(); // 가입 회원 수 추가히기위한 새로운 list

		CommunityDTO dto_com = new CommunityDTO();

		for (CommunityDTO dto : list) {
			dto_com.setTitle(dto.getTitle());
			dto.setMembers(com_dao.countMember(dto_com)); // 커뮤니티 가입 회원 수

			lists.add(dto);
		}
		model.addAttribute("list", lists);

	}

}
