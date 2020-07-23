package com.jsinc.services.profile;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;

// 프로필 수정 서비스
@Service
public class ProfileEditService implements ServiceIf {
	@Autowired
	MemberDAO dao;

	// by성택_프로필 이름, 생년월일, 전화번호, 메일/SMS 수신여부 수정 메소드_20200528
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		ServletContext application = session.getServletContext();

		MemberDTO user = (MemberDTO) application.getAttribute("user");
		user.setName(request.getParameter("name"));
		user.setBirth(request.getParameter("birth"));
		user.setPhoneNumber(request.getParameter("phoneNumber"));
		user.setMailChk(request.getParameter("mailChk"));
		user.setSmsChk(request.getParameter("smsChk"));

		try {
			dao.editProfile(user);
			application.setAttribute("user", user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}