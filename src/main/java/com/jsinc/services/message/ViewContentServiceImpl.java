package com.jsinc.services.message;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDTO.MessageDTO;
@Service
public class ViewContentServiceImpl implements ServiceMes{

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		MessageDTO dto = new MessageDTO();
		//receiver
		dto.setReceiver(request.getParameter("receiver"));
		dto.setSentTime(request.getParameter("sentTime"));
		dto.setSubject(request.getParameter("subject"));
		dto.setContent(request.getParameter("content"));
		
		//sender
		dto.setSender(request.getParameter("sender"));
		dto.setSenderRank(request.getParameter("senderRank"));
		dto.setSentTime(request.getParameter("sentTime"));
		dto.setSenderEmpNo(Integer.parseInt(request.getParameter("senderEmpNo")));
		
		
		
		model.addAttribute("subCon",dto);
		
		
	}

}
