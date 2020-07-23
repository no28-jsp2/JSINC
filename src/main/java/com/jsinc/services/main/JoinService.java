package com.jsinc.services.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;

// 회원가입 서비스
@Service
public class JoinService implements ServiceIf {
	@Autowired
	MemberDAO dao;

	// by해준_회원가입_20200522
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		MemberDTO dto = (MemberDTO) map.get("dto");
		
		String rank = dto.getRank();
		if(rank.equals("사원"))
			dto.setAuthority(1);
		else if(rank.equals("주임"))
			dto.setAuthority(2);
		else if(rank.equals("대리"))
			dto.setAuthority(3);
		else if(rank.equals("과장"))
			dto.setAuthority(4);
		else if(rank.equals("부장"))
			dto.setAuthority(5);
		else if(rank.equals("이사"))
			dto.setAuthority(6);
		else if(rank.equals("대표"))
			dto.setAuthority(7);
		
		dao.memReg(dto);
		return 0;
	}
	
}
