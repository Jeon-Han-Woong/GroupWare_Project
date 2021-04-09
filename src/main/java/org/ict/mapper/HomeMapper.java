package org.ict.mapper;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.NoticeVO;

public interface HomeMapper {

	public List<NoticeVO> noticeTopThree();
	
	public List<BoardVO> noSignBoard(Integer mno);
}
