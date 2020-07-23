package com.jsinc.services.main;

import org.springframework.ui.Model;

import com.jsinc.jsincDTO.MemberDTO;

// by성택_메인화면 서비스 인터페이스_20200519
public interface ServiceIf {
	public int execute(Model model) throws Exception;
	
	/*
	// 사원번호 중복확인
	public int empNoChk(MemberDTO dto) throws Exception;

	// 이메일 중복확인
	public int userEmailChk(String userEmail) throws Exception;

	public void sentPw(MemberDTO dto) throws Exception;
	*/
}
