package org.ict.service;

import org.ict.domain.MemberVO;
import org.ict.mapper.ProfileRestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProfileRestServiceImpl implements ProfileRestService {

	@Autowired
	private ProfileRestMapper mapper;

	@Override
	public MemberVO detailMyInfo(Integer mno) {
		return mapper.getMyInfo(mno);
	}
	
	@Override
	public String verifyPwd(Integer mno) {
		return mapper.verifyPwd(mno);
	}
	
	@Override
	public void modifyInfo(MemberVO vo) {
		mapper.updateInfo(vo);
	}

	
	
}
