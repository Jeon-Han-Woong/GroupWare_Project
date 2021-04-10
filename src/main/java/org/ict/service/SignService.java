package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.SearchCriteria;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;

public interface SignService {

	
	public BoardVO reportRead(int bno);
	
	public void reportWrite(BoardVO board);
	
	public List<BoardVO> myWaitingList(SearchCriteria cri, int mno);
	
	public List<BoardVO>  mySuccessList(SearchCriteria cri,  int mno);
	
	public int myWaitingCountPageNum (SearchCriteria cri, int mno);
	
	public int mySuccessCountPageNum (SearchCriteria cri, int mno);
	
	public List<BoardVO> getListCriteriaA(SearchCriteria cri);
	
	public List<BoardVO>  getListCriteriaB(SearchCriteria cri);
	
	public int getcountPage(SearchCriteria cri);
	
	public int getcountPage0(SearchCriteria cri);
	
	public List<DeptVO> deptSelect();

	public void signSucceess(BoardVO board);

	public void reportModify(BoardVO board);

	public BoardVO reportModifyForm(int bno);

	public void reportDelete(int bno);
	
	public List<FormVO> getForm();

	
}
