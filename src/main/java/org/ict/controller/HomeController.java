package org.ict.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.ict.domain.MemberVO;
import org.ict.service.HomeService;
import org.ict.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

/**
 * Handles requests for the application home page.
 */
@Log4j
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private HomeService service;
	
	@Autowired
	private LoginService servicelog;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		log.info(request.getCookies());
		
		Cookie[] cookies = request.getCookies();
		
		Cookie cookie = null;
		model.addAttribute("serverTime", formattedDate );
		
		model.addAttribute("noticelatest", service.noticeLatest());
		
		if (cookies != null) {
			for(Cookie c: cookies) {
				if(c.getName().equals("loginCookie")) {
					cookie = c;
					break;
				}
			}
			log.info(cookie);
			if (cookie != null) {
				MemberVO memberVO = servicelog.checkLoginBefore(cookie.getValue());
				
				log.info("MEMBERVO : " + memberVO);
			
				if(memberVO != null) {
					session.setAttribute("login", memberVO);
				}
			}
		}
		
		
		return "home";
	}
	
}
