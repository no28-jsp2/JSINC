package com.jsinc.services.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;

@Service
public class MemberServiceImpl implements ServiceIf {
	@Autowired
	MemberDAO dao;

	// 회원가입
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		MemberDTO dto = (MemberDTO) map.get("dto");
		
		String rank = dto.getRank();
		if(rank.equals("과장") || rank.equals("부장") || rank.equals("이사"))
			dto.setAuthority("Y");
		else
			dto.setAuthority("N");
		dao.memReg(dto);
		return 0;
	}

	@Override
	public int empNoChk(MemberDTO dto) throws Exception {
		return dao.empNoChk(dto);
	}

	@Override
	public int userEmailChk(String userEmail) throws Exception {
		return dao.userEmailChk(userEmail);
	}

	@Override
	public void sentPw(MemberDTO dto) throws Exception {
		dao.sentPw(dto);
	}

}
