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

public interface ManagerService {
	
	public void personRegister(MemberVO mem);
	
	public List<MemberVO> personList();
	
	public List<MemberVO> personListPage(SearchCriteria cri);
	
	public int personCount(SearchCriteria cri);
	
	public List<DeptVO> deptSelect();
	
	public MemberVO personGet(Integer mno);
	
	public Integer personModify(MemberVO mem);
	
	public boolean personRemove(Integer mno);
	
	public List<MemberVO> deptPersonList(SearchCriteria cri);
	
	public int deptPersonListCount(SearchCriteria cri);
	
	public void deptRegister(String deptname);
	
	public Integer deptModify(DeptVO dept);
	
	public Integer deptRemove(Integer deptno);
	
	public Integer deptMemberModify(MemberVO mem);
	
	public String searchDeptName(SearchCriteria cri);
}
