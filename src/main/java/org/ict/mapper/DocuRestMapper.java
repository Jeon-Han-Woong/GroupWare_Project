package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.apache.ibatis.annotations.Param;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface DocuRestMapper {
	
	public List<BoardVO> boardListPage(Criteria cri);
	
	public int boardCount();
	
	public List<BoardVO> boardListPageSearch(@Param("cri") Criteria cri, @Param("search") SearchCriteria search);
	
	public int boardCountSearch(SearchCriteria search);
	
	public void boardDelete(int bno);
	
	public List<NoticeVO> noticeListPage(Criteria cri);
	
	public int noticeCount();
	
	public List<NoticeVO> noticeListPageSearch(@Param("cri") Criteria cri, @Param("search") SearchCriteria search);
	
	public int noticeCountSearch(SearchCriteria search);
	
	public void noticeDelete(int nno);
	
}
