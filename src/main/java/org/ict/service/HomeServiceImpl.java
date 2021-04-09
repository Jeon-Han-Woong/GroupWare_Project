package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.NoticeVO;
import org.ict.mapper.HomeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeService {
	
	@Autowired
	private HomeMapper mapper;
	
	public List<NoticeVO> noticeLatest() {
		
		return mapper.noticeTopThree();
	}

	@Override
	public List<BoardVO> noSignBoard(Integer mno) {
		return mapper.noSignBoard(mno);
	}
}
