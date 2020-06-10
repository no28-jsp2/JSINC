package com.jsinc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignController {

	@RequestMapping("new")
	public String newSign() {
		return "new";
	}
	@RequestMapping("aproved")
	public String aprovedSign() {
		return "aproved";
	}
	@RequestMapping("success")
	public String successSign() {
		return "success";
	}
	@RequestMapping("waiting")
	public String waitSign() {
		return "waiting";
	}
}
