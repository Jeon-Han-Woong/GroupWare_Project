package org.ict.service;

import java.sql.Date;

import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;
import org.ict.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginMapper mapper;

	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		return mapper.login(dto);
	}

	@Override
	public void keepLogin(Integer mno, String sessionId, Date next) throws Exception {
		mapper.keepLogin(mno, sessionId, next);
	}

	@Override
	public MemberVO checkLoginBefore(String value) {
		return mapper.checkUserWithSessionKey(value);
	}
	
}
