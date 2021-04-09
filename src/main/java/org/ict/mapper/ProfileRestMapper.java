package org.ict.mapper;

import org.ict.domain.MemberVO;

public interface ProfileRestMapper {

	public MemberVO getMyInfo(Integer mno);
	
	public String verifyPwd(Integer mno);
	
	public void updateInfo(MemberVO vo);
}
