package com.jsinc.services.main;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MemberDAO;
import com.jsinc.jsincDTO.MemberDTO;

// 로그인 서비스
@Service
public class LoginService implements ServiceIf {
	private final int CHK_OK = 0;
	private final int CHK_NO = 1;

	@Autowired
	MemberDAO dao;

	// by성택_로그인 성공 여부 메소드_20200521
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String empNo = request.getParameter("empNo");
		String password = request.getParameter("password");
		MemberDTO dto = dao.memberInfo(empNo); // 입력한 사원 번호로 사원의 정보를 dto에 저장
		// 사원에 대한 정보가 없거나 비밀번호가 일치하지 않으면 로그인 실패
		if (dto != null) {
			if (password.equals(dto.getPassword())) {
				HttpSession session = request.getSession();
				ServletContext application = session.getServletContext();
				application.setAttribute("user", dto); // 로그인한 사원 dto application 변수에 저장

				// by성택_로그인 한 월,일 저장_20200605
				// 달력 현재 날짜 표시하기 위함
				Date date = new Date();
				SimpleDateFormat format = new SimpleDateFormat("MM");
				SimpleDateFormat day = new SimpleDateFormat("dd");
				String month = format.format(date);
				String days = day.format(date);
				
				application.setAttribute("loginMonth", month); 
				application.setAttribute("loginDay", days);
				return CHK_OK;
			}
		}
		return CHK_NO;
	}
}
