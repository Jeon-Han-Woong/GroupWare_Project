package org.ict.mapper;

import java.util.List;

import org.ict.domain.GeneralVO;
import org.ict.domain.SearchCriteria;

public interface GeneralMapper {
	
	public List<GeneralVO> getList();

	public GeneralVO read(Long mno);

	public int update(GeneralVO board);
	
//	public List<GeneralVO> listPage(SearchCriteria cri);

//	public int countPageNum(SearchCriteria cri);

	
	
	
}






