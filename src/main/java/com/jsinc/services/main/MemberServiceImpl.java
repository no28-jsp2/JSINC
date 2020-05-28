package com.jsinc.services.main;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;


@Service
public class MemberServiceImpl implements ServiceIf {
	@Autowired
	MemberDAO dao;
	//회원가입
	@Override
	public int execute(Model model) throws Exception {
		Map<String, Object> map =model.asMap();
		MemberDTO dto =(MemberDTO)map.get("dto");
		dao.memReg(dto);
		
		return 0;
	}

	@Override
	public int empNoChk(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("service : " + dto.getEmpNo());
		int result = dao.empNoChk(dto);

		return result;
	}

	@Override
	public int userEmailChk(String userEmail) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("service : " + userEmail);
		int result= dao.userEmailChk(userEmail);
		return result;
	}

	@Override
	public void sentPw(MemberDTO dto) throws Exception {
		dao.sentPw(dto);
		
	}
	

}
