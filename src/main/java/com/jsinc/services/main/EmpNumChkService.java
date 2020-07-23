package com.jsinc.services.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;

// 사원번호 중복확인 서비스
@Service
public class EmpNumChkService implements ServiceIf {
	@Autowired
	MemberDAO dao;

	// by해준_사원번호 중복체크 메소드_20200522
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map = model.asMap();
		MemberDTO dto = (MemberDTO) map.get("dto");
		return dao.empNumChk(dto); // 사원번호가 존재하면 1, 없으면 0
	}

}
