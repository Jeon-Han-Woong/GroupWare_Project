package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.SearchCriteria;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.ict.domain.BoardVO;

public interface SignMapper {

	public List<BoardVO> signStateListA(SearchCriteria cri);
	
	public List<BoardVO> signStateListB(SearchCriteria cri);
	
	public BoardVO reportRead(int bno);
	
	public void reportWrite(BoardVO board);
	
	public int countPageNum(SearchCriteria cri);
	
	public int countPageNum0(SearchCriteria cri);
	
	
	
	public List<DeptVO> deptSelect();

	public List<MemberVO> signerSelect(String deptname);

	public void signSuccess(BoardVO board);

	public void reportModify(BoardVO board);

	public BoardVO reportModifyForm(int bno);

	public void reportDelete(int bno);
	
	public List<FormVO> getForm();
}
