package com.jsinc.services.main;

import java.util.HashMap;
import java.util.Map;

import org.apache.groovy.util.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.jsinc.handler.MailHandler;

// 메일 전송 서비스
@Service
public class MailServiceImpl implements MailServiceIf {
	@Autowired
	private JavaMailSender sender;

	// by해준_메일 전송 메소드_20200522
	public Map<String, Object> send(String email, String title, String body) {
		MailHandler mail; // 메일 전송위해 핸들러 생성
		try {
			mail = new MailHandler(sender); // 핸들러 객체 생성
			mail.setFrom("tjgowns12@gmail.com", "JS Inc."); // 존재하는 구글메일, 보여질 이름
			mail.setTo(email); // 받는사람 메일
			mail.setSubject(title); // 제목
			mail.setText(body); // 내용
			mail.send(); // 보내기
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String resultCode = "S-1";
		String msg = "메일이 발송되었습니다.";
		Map<String, Object> rs = new HashMap<String, Object>();
		rs.put("resultCode", resultCode);
		rs.put("msg", msg);
		return rs;
	}
}
