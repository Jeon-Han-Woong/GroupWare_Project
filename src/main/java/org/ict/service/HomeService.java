package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.NoticeVO;

public interface HomeService {

	public List<NoticeVO> noticeLatest();
	
	public List<BoardVO> noSignBoard(Integer mno);
	
}
