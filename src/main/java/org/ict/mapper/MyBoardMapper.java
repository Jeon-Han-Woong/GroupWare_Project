package org.ict.mapper;

import java.util.List;

import org.ict.domain.BoardVO;

public interface MyBoardMapper {
	
	public List<BoardVO> getList();

	public BoardVO read(Long mno);

	public int update(BoardVO board);

	
	
	
}






