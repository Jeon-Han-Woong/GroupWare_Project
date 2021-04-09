package org.ict.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ict.domain.MemberVO;
import org.ict.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import lombok.extern.log4j.Log4j;

@Log4j
public class AuthInterceptor extends HandlerInterceptorAdapter{

	@Autowired
	private LoginService service;
	
	@Override
	public boolean preHandle (HttpServletRequest request, HttpServletResponse response, 
					Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null) {
			log.info("current user id not logined");
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				MemberVO memberVO = service.checkLoginBefore(loginCookie.getValue());
				log.info("MEMBERVO : " + memberVO);
				
				if(memberVO != null) {
					session.setAttribute("login", memberVO);
					return true;
				}
			}
			response.sendRedirect("/");
			return false;
		}
		return true;
		
	}
	
}
