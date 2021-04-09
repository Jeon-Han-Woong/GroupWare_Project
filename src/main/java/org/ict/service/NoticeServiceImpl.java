package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeMapper mapper;
	

	@Override
	public List<NoticeVO> getNoticeList() {
		
		return mapper.getNoticeList();
	}

	@Override
	public NoticeVO noticeRead(Long nno) {
		
		NoticeVO board = new NoticeVO();
		
		board = mapper.getNoticeRead(nno);
		
		return board;
	}

	@Override
	public List<BoardVO> signStateList() {
		
		return mapper.signStateList();
	}

	@Override
	public int getCountPage(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.countPageNum(cri);
	}

	public List<NoticeVO> getListPage(SearchCriteria cri) {
		return mapper.listPage(cri);
	}

	@Override
	public void write_new(NoticeVO board) {
		mapper.insert(board);
	}

	@Override
	public boolean edits(NoticeVO board) {
		// TODO Auto-generated method stub
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long nno) {
		// TODO Auto-generated method stub
		return mapper.delete(nno) == 1;
	}

	@Override
	public List<FormVO> getFormList() {
		// TODO Auto-generated method stub
		return mapper.getFormList();
	}
	
	
	
	

}
