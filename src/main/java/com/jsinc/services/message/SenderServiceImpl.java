package com.jsinc.services.message;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.MessageDAO;
import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.jsincDTO.MessageDTO;
@Service
public class SenderServiceImpl implements ServiceMes{
	@Autowired 
	MessageDAO dao;
	@Override
	public void execute(Model model) {
		
		
		//리퀘스트 값 
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		//어플리케이션
		HttpSession session= request.getSession();
		ServletContext application = session.getServletContext();
		MemberDTO dto= (MemberDTO) application.getAttribute("user");
		//시간
		SimpleDateFormat fm1 = new SimpleDateFormat("yyyy년MM월dd일hh시mm분");
		String date = fm1.format(new Date());
		
		MessageDTO mdto= new MessageDTO();
		mdto.setSender(dto.getName());
		mdto.setSenderEmpNo(dto.getEmpNo());
		mdto.setSenderRank(dto.getRank());
		mdto.setSenderDep(dto.getDep());
		mdto.setSentTime(date);
		mdto.setRecEmpNo(Integer.parseInt(request.getParameter("recEmpNo")));
		mdto.setReceiver(request.getParameter("receiver"));
		System.out.println("==============="+dto.getRank());
		mdto.setRecRank(request.getParameter("recRank"));
		mdto.setRecDep(request.getParameter("recDep"));
		//문자처리
		String subject=request.getParameter("subject");
		String content=request.getParameter("content");
		subject = subject.replace("<", "&lt;");
		subject = subject.replace("<", "&gt;");
		// * 공백문자 처리
		subject = subject.replace("  ", "&nbsp;&nbsp;");
		// * 줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		mdto.setSubject(subject);
		mdto.setContent(content);
		dao.sendMes(mdto);
		
		
	}

}
