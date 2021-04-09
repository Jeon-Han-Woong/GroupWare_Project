package org.ict.service;

import java.sql.Date;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface LoginService {

	public MemberVO login(LoginDTO dto) throws Exception;
	
	public void keepLogin(Integer mno, String sessionId, Date next) throws Exception;
	
	public MemberVO checkLoginBefore(String value);
}
