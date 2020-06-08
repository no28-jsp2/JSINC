package com.jsinc.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsinc.services.todo.ServiceIf;
import com.jsinc.services.todo.TodoListService;

@Controller
public class ToDoListController {
	ApplicationContext ac = App.ac;
	ServiceIf service;
	
	@RequestMapping("toDoList")
	public String toDoList(Model model, HttpServletRequest request) {
		model.addAttribute("request", request);
		service = ac.getBean("todoListService", TodoListService.class);
		service.execute(model);
		return "toDoList/toDoList";
	}
}
