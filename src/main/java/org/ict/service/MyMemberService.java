package org.ict.service;


import java.util.List;

import org.ict.domain.MemberVO;

public interface MyMemberService {
 
	public MemberVO get(Long mno);

	public List<MemberVO> getList();
	
	public boolean modify(MemberVO board);

	
}
