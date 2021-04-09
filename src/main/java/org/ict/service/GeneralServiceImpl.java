package org.ict.service;

import java.util.List;

import org.ict.domain.GeneralVO;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.GeneralMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GeneralServiceImpl implements GeneralService{

	@Autowired
	private GeneralMapper mapper;

	@Override
	public List<GeneralVO> getList() {
		return mapper.getList();
	}

	@Override
	public GeneralVO get(Long bno) {
		return mapper.read(bno);
	}

//	@Override
//	public List<GeneralVO> getListPage(SearchCriteria cri) {
//		return mapper.listPage(cri);
//	}

//	@Override
//	public int getCountPage(SearchCriteria cri) {
//		return mapper.countPageNum(cri);
//	}


	

}
