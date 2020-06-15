package com.jsinc.services.sign;

import java.util.List;

import com.jsinc.jsincDTO.SignDTO;

public interface signService {

	public void createSign(SignDTO dto);
	
	public SignDTO read(int bno);
	
	public List<SignDTO> lists();
	
	public List<SignDTO> waitList(int empno);
	
	public void delete(int bno);
}
