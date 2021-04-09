package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.ManagerMapper;
import org.ict.mapper.FormRestMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class FormRestServiceImpl implements FormRestService{

	@Autowired
	private FormRestMapper mapper;
	
	@Override
	public List<FormVO> formList() {
		return mapper.formList();
	}
	
	@Override
	public List<FormVO> formListPage(Criteria cri) {
		return mapper.formListPage(cri);
	}
	
	@Override
	public Integer formCount() {
		return mapper.formCount();
	}
	
	@Override
	public List<FormVO> formListPageSearch(Criteria cri, SearchCriteria search) {
		return mapper.formListPageSearch(cri, search);
	}
	
	@Override
	public Integer formCountSearch(String keyword) {
		return mapper.formCountSearch(keyword);
	}
	
	@Override
	public void formRegister(FormVO form) {
		mapper.formInsert(form);
	}

	@Override
	public void formModify(FormVO form) {
		mapper.formUpdate(form);
	}
	
	@Override
	public void formRemove(Integer fno) {
		mapper.formDelete(fno);
	}

	
}
