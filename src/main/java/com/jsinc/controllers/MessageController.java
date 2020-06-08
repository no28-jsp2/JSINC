package com.jsinc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {
	@RequestMapping("sentMessage")
	public String sentMessage() {
		return "message/sentView";
	}
	
	@RequestMapping("RecMessage")
	public String RecMessage() {
		return "message/RecView";
	}
	
}
