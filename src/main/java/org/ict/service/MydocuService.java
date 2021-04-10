package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface MydocuService {

	public List<BoardVO> docuList(Integer mno);
	
	public BoardVO get(Long bno);
	
	public boolean modify(BoardVO board);

	public boolean remove(Long bno);

	public List<BoardVO> getListPage(Integer mno, Criteria cri);

	public int getCountPage(Integer mno);

	public List<BoardVO> getListPageSearch(Integer mno, Criteria cri, SearchCriteria search);

	public int getCountPageSearch(Integer mno, SearchCriteria search);

}
