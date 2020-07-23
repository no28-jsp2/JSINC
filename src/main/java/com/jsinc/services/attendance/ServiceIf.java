package com.jsinc.services.attendance;

import org.springframework.ui.Model;

import com.jsinc.jsincDTO.AttendanceDTO;

// by성택_근태 정보 서비스 인터페이스_20200523
public interface ServiceIf {
	public AttendanceDTO execute(Model model);
}