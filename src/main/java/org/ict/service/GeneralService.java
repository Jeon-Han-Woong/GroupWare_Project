package org.ict.service;

import java.util.List;

import org.ict.domain.GeneralVO;
import org.ict.domain.SearchCriteria;

public interface GeneralService {


	public List<GeneralVO> getList();

	public GeneralVO get(Long bno);
	
//	public List<GeneralVO> getListPage(SearchCriteria cri);

//	public int getCountPage(SearchCriteria cri);

}
