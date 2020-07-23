package com.jsinc.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.services.profile.PasswordChangeService;
import com.jsinc.services.profile.ProfileEditService;
import com.jsinc.services.profile.ServiceIf;
import com.jsinc.services.profile.ProfileValueService;

// 프로필 컨트롤러
@Controller
public class ProfileController {
	ApplicationContext ac = App.ac;
	ServiceIf profileService;
	
	// by성택_프로필 페이지_20200526
	@RequestMapping("profile")
	public String profile(Model model, HttpServletRequest request) {
		// by성택_프로필에 사번, 근무일 수, 근무 시간 값 나타내기_20200527 추가
		model.addAttribute("request", request);
		profileService = ac.getBean("profileValueService", ProfileValueService.class);
		profileService.execute(model);
		return "profile";
	}
	
	// by성택_사원 프로필 수정하기_20200528
	@RequestMapping("editProfile")
	public String editProfile(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		profileService = ac.getBean("profileEditService", ProfileEditService.class);
		profileService.execute(model);
		return "redirect:profile";
	}

	// by성택_비밀번호 변경_20200528
	@RequestMapping("changePw")
	public String changePw(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		profileService = ac.getBean("passwordChangeService", PasswordChangeService.class);
		profileService.execute(model);
		return "redirect:profile";
	}
}
