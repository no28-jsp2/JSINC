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
		SimpleDateFormat fm1 = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분");
		String date = fm1.format(new Date());
		
		//JSinc_sendMsg 테이블에 저장됨
		MessageDTO sdto= new MessageDTO();
		sdto.setSenderEmpNo(dto.getEmpNo());
		sdto.setRecEmpNo(Integer.parseInt(request.getParameter("recEmpNo")));
		sdto.setReceiver(request.getParameter("receiver"));
		sdto.setRecRank(request.getParameter("recRank"));
		sdto.setRecDep(request.getParameter("recDep"));
		System.out.println("recDep:"+request.getParameter("recDep"));
		sdto.setSubject(request.getParameter("subject"));
		sdto.setContent(request.getParameter("content"));
		sdto.setSentTime(date);
		//JSinc_recMsg테이블에 저장됨
		MessageDTO rdto= new MessageDTO();
		rdto.setRecEmpNo(Integer.parseInt(request.getParameter("recEmpNo")));
		rdto.setSenderEmpNo(dto.getEmpNo());
		rdto.setSender(dto.getName());
		rdto.setSenderRank(dto.getRank());
		rdto.setSenderDep(dto.getDep());
		System.out.println("senderDep:"+dto.getDep());
		rdto.setSubject(request.getParameter("subject"));
		rdto.setContent(request.getParameter("content"));
		rdto.setSentTime(date);
		
		
		dao.sendMsg(sdto);
		dao.recMsg(rdto);
		
		
		
	}

}
