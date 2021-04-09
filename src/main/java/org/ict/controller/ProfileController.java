package org.ict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/profile/*")
public class ProfileController {

	
//	@GetMapping("/verify")
//	public String verify() {
//		
//		return "/profile/verify";
//	}
	
	@GetMapping("/myinfo")
	public String myinfo() {
		
		return "/profile/myinfo";
	}
	
	@GetMapping("/myinfomodify")
	public String myinfomodify() {
		
		return "/profile/myinfomodify";
	}
	
	@GetMapping("/messagebox")
	public String messagebox() {
		
		return "/profile/messagebox";
	}
	
	
}
