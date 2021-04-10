package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface SignRestService {
	
	public List<BoardVO> waitListPage(Criteria cri);
	
	public int waitCount();
	
	public List<BoardVO> waitListPageSearch(Criteria cri, SearchCriteria search);
	
	public int waitCountSearch(SearchCriteria search);

}
