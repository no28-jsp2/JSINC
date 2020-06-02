package com.jsinc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityControllers {
	@RequestMapping("createCommunity")
	public String createCommunity() {
		return "community/createCommunity";
	}
	@RequestMapping("allCommunity")
	public String allCommunity() {
		return "community/allCommunity";
	}
	@RequestMapping("joinCommunity")
	public String joinCommunity() {
		return "community/joinCommunity";
	}
	
}
