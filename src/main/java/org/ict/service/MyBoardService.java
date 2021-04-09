package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.SearchCriteria;

// 서비스 계층에는 일반적으로 담당테이블 하나당 인터페이스 하나
// 그리고 그 인터페이스를 구현한 구현클래스 하나를 만듭니다.
public interface MyBoardService {

	public void register(BoardVO member);
	
	public boolean modify(BoardVO board);

	public BoardVO get(Long mno);

	public List<BoardVO> getList();
	
	

}
