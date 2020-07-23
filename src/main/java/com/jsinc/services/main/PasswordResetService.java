package com.jsinc.services.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;

// 비밀번호 초기화 서비스
@Service
public class PasswordResetService implements ServiceIf {
	@Autowired
	MemberDAO dao;

	// by해준_비밀번호 초기화_20200529
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		MemberDTO dto = (MemberDTO) map.get("dto");
		dao.sentPw(dto);
		return 0;
	}

}
