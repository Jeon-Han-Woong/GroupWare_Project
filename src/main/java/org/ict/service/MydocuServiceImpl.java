package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.MydocuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MydocuServiceImpl implements MydocuService {

	@Autowired
	private MydocuMapper mapper;

	@Override
	public List<BoardVO> docuList(Integer mno) {
		return mapper.docuList(mno);
	}

	@Override
	public BoardVO get(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO board) {
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		return mapper.delete(bno);
	}

	@Override
	public List<BoardVO> getListPage(Integer mno, Criteria cri) {
		return mapper.docuListPage(mno, cri);
	}

	@Override
	public int getCountPage(Integer mno) {
		return mapper.countPageNum(mno);
	}

	@Override
	public List<BoardVO> getListPageSearch(Integer mno, Criteria cri, SearchCriteria search) {
		return mapper.docuListPageSearch(mno, cri, search);
	}

	@Override
	public int getCountPageSearch(Integer mno, SearchCriteria search) {
		return mapper.countPageNumSearch(mno, search);
	}


	



	



	

}
