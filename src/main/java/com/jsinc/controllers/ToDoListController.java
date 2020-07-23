package com.jsinc.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.services.todo.AddListService;
import com.jsinc.services.todo.CheckService;
import com.jsinc.services.todo.DeleteService;
import com.jsinc.services.todo.EditPageService;
import com.jsinc.services.todo.EditService;
import com.jsinc.services.todo.ServiceIf;
import com.jsinc.services.todo.TodoListService;

// 스케줄 컨트롤러
@Controller
public class ToDoListController {
	ApplicationContext ac = App.ac;
	ServiceIf service;
	
	// by성택_스케줄 리스트 보기_20200605
	@RequestMapping("toDoList")
	public String toDoList(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("todoListService", TodoListService.class);
		service.execute(model);
		return "toDoList/toDoList";
	}
	
	// by성택_할일 추가하기 페이지_20200605
	@RequestMapping("addTodo")
	public String addTodo() {
		return "toDoList/addTodo";
	}
	
	// by성택_추가_20200605
	@RequestMapping("addList")
	public String addList(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("addListService", AddListService.class);
		service.execute(model);
		return "redirect:toDoList";
	}
	
	// by성택_체크 버튼 클릭 시_20200605
	@RequestMapping("check")
	public String check(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("checkService", CheckService.class);
		service.execute(model);
		return "redirect:toDoList";
	}
	
	// by성택_수정 버튼 클릭 시 수정 페이지 이동_20200606
	@RequestMapping("editPage")
	public String editPage(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("editPageService", EditPageService.class);
		service.execute(model);
		return "toDoList/editPage";
	}
	
	// by성택_수정 버튼 클릭_20200606
	@RequestMapping("edit")
	public String edit(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("editService", EditService.class);
		service.execute(model);
		return "redirect:toDoList";
	}
	
	// by성택_삭제 버튼 클릭_20200606
	@RequestMapping("delete")
	public String delete(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("deleteService", DeleteService.class);
		service.execute(model);
		return "redirect:toDoList";
	}
}
