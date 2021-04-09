package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.mapper.MyBoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyBoardServiceImpl implements MyBoardService {

	@Autowired
	private MyBoardMapper mapper;

	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}

	@Override
	public void register(BoardVO board) {

	}

	@Override
	public BoardVO get(Long mno) {
		return mapper.read(mno);
	}

	@Override
	public boolean modify(BoardVO board) {

		return mapper.update(board) == 1;
	}

}
