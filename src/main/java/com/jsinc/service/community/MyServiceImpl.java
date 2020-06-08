package com.jsinc.service.community;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.CommunityDAO;
import com.jsinc.jsincDTO.CommunityDTO;
import com.jsinc.jsincDTO.MemberDTO;

@Service
public class MyServiceImpl implements ServiceCom{
	@Autowired
	CommunityDAO dao;

	@Override
	public void execute(CommunityDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getExe(Model model) {
		Map<String, Object> map=model.asMap();
		HttpServletRequest request=(HttpServletRequest)map.get("request");
		HttpSession session=request.getSession();
		ServletContext application = session.getServletContext();
		MemberDTO memDto =(MemberDTO)application.getAttribute("user");
		int empNo=memDto.getEmpNo();
		System.out.println("service::::"+empNo);
		ArrayList<CommunityDTO> list = (ArrayList<CommunityDTO>) dao.myCom(empNo);
		ArrayList<CommunityDTO> lists = new ArrayList<CommunityDTO>();
		CommunityDTO dto_com = new CommunityDTO();
		
		System.out.println("==========="+list.get(0).getTitle());
		for(CommunityDTO dto :list) {
			dto_com.setEmpNo(empNo);
			dto_com.setTitle(dto.getTitle());
			dto.setMembers(dao.countMember(dto_com));
			dto.setJoin("가입");
			lists.add(dto);
		}
		System.out.println("lists===="+list.get(0).getcNo());
		System.out.println("lists===="+lists.get(0).getTitle());
		System.out.println("lists===="+lists.get(0).getMembers());
		System.out.println("lists===="+lists.get(0).getname());
		System.out.println("lists===="+lists.get(0).getJoin());
		
		model.addAttribute("allList",lists);
	
	
	}
	
	
	
	
}
