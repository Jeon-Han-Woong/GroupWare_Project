package org.ict.controller;

import java.sql.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;
import org.ict.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/login/*")
public class LoginController {

	@Autowired
	private LoginService service;
	
	@GetMapping("/loginmenu")
	public String loginGet(@ModelAttribute("dto") LoginDTO dto) {
		
		return "/login/loginmenu";
	}
	
	@PostMapping("/loginPost")
	public String loginPost(LoginDTO dto, HttpSession session, Model model) throws Exception {
		
		MemberVO vo = service.login(dto);
		
		log.info(vo);
		if(vo == null) {
			return "/login/loginerror";
		}
		model.addAttribute("memberVO", vo);
		
		if(dto.isUseCookie()) {
			int amount = 60 * 60 * 24 * 7;
			
			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));
			
			service.keepLogin(vo.getMno(), session.getId(), sessionLimit);
		}
		return "/login/loginPost";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request,
						HttpServletResponse response, HttpSession session) throws Exception {
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			MemberVO vo = (MemberVO) obj;
			
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getMno(), session.getId(), new Date(System.currentTimeMillis()));
			}
		}
		
		return "login/logout";
	}
	
}
