package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;

public interface SignRestMapper {

	public List<BoardVO> waitListPage(Criteria cri);
	
	public int waitCount();
	
	public List<BoardVO> waitListPageSearch(@Param("cri") Criteria cri, @Param("search") SearchCriteria search);
	
	public int waitCountSearch(SearchCriteria search);
}
