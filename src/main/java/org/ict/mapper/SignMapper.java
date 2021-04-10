package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.SearchCriteria;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.apache.ibatis.annotations.Param;
import org.ict.domain.BoardVO;

public interface SignMapper {

	public List<BoardVO> signStateListA(SearchCriteria cri);
	
	public List<BoardVO> signStateListB(SearchCriteria cri);
	
	public List<BoardVO> myWaitingList(@Param("cri")SearchCriteria cri, @Param("mno")int mno);
	
	public List<BoardVO> mySuccessList(@Param("cri")SearchCriteria cri, @Param("mno")int mno);
	
	public BoardVO reportRead(int bno);
	
	public void reportWrite(BoardVO board);
	
	public int countPageNum(SearchCriteria cri);
	
	public int countPageNum0(SearchCriteria cri);
	
	public int myWaitingCountPageNum (SearchCriteria cri,@Param("mno") int mno);
	
	public int mySuccessCountPageNum (SearchCriteria cri,@Param("mno") int mno);
	
	
	
	
	public List<DeptVO> deptSelect();

	public List<MemberVO> signerSelect(String deptname);

	public void signSuccess(BoardVO board);

	public void reportModify(BoardVO board);

	public BoardVO reportModifyForm(int bno);

	public void reportDelete(int bno);
	
	public List<FormVO> getForm();
}
