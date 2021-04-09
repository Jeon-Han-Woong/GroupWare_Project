package org.ict.service;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.ict.domain.SearchCriteria;
import org.springframework.stereotype.Service;

public interface FormRestService {
	
	public List<FormVO> formList();
	
	public List<FormVO> formListPage(Criteria cri);
	
	public Integer formCount();
	
	public List<FormVO> formListPageSearch(Criteria cri, SearchCriteria search);
	
	public Integer formCountSearch(String keyword);
	
	public void formRegister(FormVO form);
	
	public void formModify(FormVO form);
	
	public void formRemove(Integer fno);

}
