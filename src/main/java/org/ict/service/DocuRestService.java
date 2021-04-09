package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface DocuRestService {

	public List<BoardVO> boardListPage(Criteria cri);
	
	public int boardCount();

	public List<BoardVO> boardListPageSearch(Criteria cri, SearchCriteria search);
	
	public int boardCountSearch(SearchCriteria search);
	
	public void boardRemove(int bno);
	
	public List<NoticeVO> noticeListPage(Criteria cri);
	
	public int noticeCount();
	
	public List<NoticeVO> noticeListPageSearch(Criteria cri, SearchCriteria search);
	
	public int noticeCountSearch(SearchCriteria search);
	
	public void noticeRemove(int nno);
	
}
