package com.jsinc.service.community;

import org.springframework.ui.Model;

import com.jsinc.jsincDTO.CommunityDTO;

public interface ServiceCom {
	public void execute(CommunityDTO dto);
	public void getExe(Model model);
}
