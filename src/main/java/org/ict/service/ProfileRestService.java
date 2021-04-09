package org.ict.service;

import org.ict.domain.MemberVO;

public interface ProfileRestService {

	public MemberVO detailMyInfo(Integer mno);
	
	public String verifyPwd(Integer mno);
	
	public void modifyInfo(MemberVO vo);

}
