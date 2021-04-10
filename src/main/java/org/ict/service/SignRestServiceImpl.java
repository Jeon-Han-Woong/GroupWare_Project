package org.ict.service;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.SignRestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignRestServiceImpl implements SignRestService{

	@Autowired
	private SignRestMapper mapper;

	@Override
	public List<BoardVO> waitListPage(Criteria cri) {
		return mapper.waitListPage(cri);
	}

	@Override
	public int waitCount() {
		return mapper.waitCount();
	}

	@Override
	public List<BoardVO> waitListPageSearch(Criteria cri, SearchCriteria search) {
		return mapper.waitListPageSearch(cri, search);
	}

	@Override
	public int waitCountSearch(SearchCriteria search) {
		return mapper.waitCountSearch(search);
	}
}
