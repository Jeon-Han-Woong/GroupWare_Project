package org.ict.mapper;

import java.util.List;

import org.ict.domain.MemberVO;

public interface MyMemberMapper {

	public List<MemberVO> getList();

	public MemberVO read(Long mno);
	
	public boolean update(MemberVO board);

}
