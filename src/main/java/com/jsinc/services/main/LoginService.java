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

@Service
public class LoginService implements ServiceIf {
	private final int CHK_OK = 0;
	private final int CHK_NO = 1;
	
	@Autowired
	MemberDAO dao;

	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
	      HttpServletRequest request = (HttpServletRequest) map.get("request");
	      MemberDTO dto = dao.list(request.getParameter("empNo"));
	      if(dto != null) {
	         if(request.getParameter("password").equals(dto.getPassword())) {
	            //profile 추가
	            Date date = new Date();
	            SimpleDateFormat format = new SimpleDateFormat("MM");
	            String month = format.format(date);
	            //------------------------------------------------------
	            HttpSession session = request.getSession();
	            ServletContext application = session.getServletContext();
	            application.setAttribute("user", dto);
	            //profile 추가
	            application.setAttribute("loginMonth", month);
	            //------------------------------------------------------
	            return CHK_OK;
	         }
	      }
	      return CHK_NO;
	}

	@Override
	public int empNoChk(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int userEmailChk(String userEmail) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void sentPw(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		
	}
}
