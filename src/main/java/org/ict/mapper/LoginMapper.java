package org.ict.mapper;

import java.sql.Date;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.LoginDTO;
import org.ict.domain.MemberVO;

public interface LoginMapper {

	public MemberVO login(LoginDTO dto) throws Exception;
	
	public void keepLogin(@Param("mno") Integer mno, 
						@Param("sessionId") String sessionId, 
						@Param("next") Date next);
	
	public MemberVO checkUserWithSessionKey(String value);
}
