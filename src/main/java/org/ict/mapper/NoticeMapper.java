package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.SearchCriteria;

public interface NoticeMapper {

	public List<NoticeVO>  getNoticeList();

	public NoticeVO getNoticeRead(Long nno);
	
	public void insert(NoticeVO board);
	
	public List<NoticeVO> listPage(SearchCriteria cri);
	
	public int countPageNum(SearchCriteria cri);

	public List<BoardVO> signStateList();

	public int update(NoticeVO board);

	public int delete(Long nno);
	
	public List<FormVO> getFormList();
}
