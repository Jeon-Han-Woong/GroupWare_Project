package org.ict.service;


import java.util.List;

import org.ict.domain.MemberVO;
import org.ict.mapper.MyMemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyMemberServiceImpl implements MyMemberService {

	@Autowired
	private MyMemberMapper mapper;


	@Override
	public MemberVO get(Long mno) {
		return mapper.read(mno);
	}


	@Override
	public List<MemberVO> getList() {
		return mapper.getList();
	}


	@Override
	public boolean modify(MemberVO board) {
		return mapper.update(board);
	}


	


	




}
