package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.SearchCriteria;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.ict.domain.BoardVO;
import org.ict.mapper.SignMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignServiceImpl implements SignService{

	@Autowired
	private SignMapper mapper;
	

	

	@Override
	public void reportWrite(BoardVO document) {
		
		mapper.reportWrite(document);
	}

	@Override
	public BoardVO reportRead(int bno) {
		
		BoardVO document = new BoardVO();
		
		document = mapper.reportRead(bno);
		
		return document;
	}
	
	@Override
	public List<BoardVO> myWaitingList(SearchCriteria cri, int mno) {
		
		return mapper.myWaitingList(cri, mno);
	}
	
	@Override
	public List<BoardVO> mySuccessList(SearchCriteria cri, int mno) {
		
		return mapper.mySuccessList(cri, mno);
	}

	
	@Override
	public List<BoardVO> getListCriteriaA(SearchCriteria cri) {
		
		return mapper.signStateListA(cri);
	}

	@Override
	public List<BoardVO>  getListCriteriaB(SearchCriteria cri) {
		
		return mapper.signStateListB(cri);
	}

	@Override
	public int myWaitingCountPageNum(SearchCriteria cri, int mno) {
		return mapper.myWaitingCountPageNum(cri, mno);
	}

	@Override
	public int mySuccessCountPageNum(SearchCriteria cri, int mno) {
		return mapper.mySuccessCountPageNum(cri, mno);
	}
	
	@Override
	public int getcountPage(SearchCriteria cri) {
		
		return mapper.countPageNum(cri);
	}

	@Override
	public int getcountPage0(SearchCriteria cri) {
		
		return mapper.countPageNum0(cri);
	}
	
	@Override
	public List<DeptVO> deptSelect() {
		
		return mapper.deptSelect();
	}

	@Override
	public void signSucceess(BoardVO board) {
		
		mapper.signSuccess(board);
	}

	@Override
	public void reportModify(BoardVO board) {
		
		mapper.reportModify(board);
	}

	@Override
	public BoardVO reportModifyForm(int bno) {
		
		BoardVO board = new BoardVO();
		
		board = mapper.reportModifyForm(bno);
		
		return board;
	}

	@Override
	public void reportDelete(int bno) {
		
		mapper.reportDelete(bno);
	}

	@Override
	public List<FormVO> getForm() {
		return mapper.getForm();
	}


	

	

	

	
	
	
	
	

}
