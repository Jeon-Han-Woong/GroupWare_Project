package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.SearchCriteria;

public interface NoticeService {

	public List<NoticeVO> getNoticeList();

	public NoticeVO noticeRead(Long bno);
	
	public void write_new(NoticeVO board);
	
	public List<BoardVO> signStateList();

	public int getCountPage(SearchCriteria cri);
	
	public List<NoticeVO> getListPage(SearchCriteria cri);

	public boolean edits(NoticeVO board);

	public boolean remove(Long bno);

	public List<FormVO> getFormList();
}
