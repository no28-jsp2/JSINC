package com.jsinc.services.todo;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.jsinc.jsincDAO.ToDoListDAO;
import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.jsincDTO.ToDoListDTO;

// 스케줄 리스트 서비스
@Service
public class TodoListService implements ServiceIf {
	@Autowired
	ToDoListDAO dao;

	// by성택_현재 날짜에 본인이 등록한 할일 리스트_20200605
	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		HttpSession session = request.getSession();
		ServletContext application = session.getServletContext();
		MemberDTO dto_mem = (MemberDTO) application.getAttribute("user");

		session.removeAttribute("editPage"); // by성택_수정 페이지 보기때 생성했던 session 삭제_20200606

		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String edate = format.format(date);

		ToDoListDTO dto_todo = new ToDoListDTO();
		dto_todo.setEmpNo(dto_mem.getEmpNo());
		dto_todo.seteDate(edate);
		ArrayList<ToDoListDTO> list = (ArrayList<ToDoListDTO>) dao.list(dto_todo);
		model.addAttribute("list", list);

	}
}
