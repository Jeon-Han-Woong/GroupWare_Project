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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ManagerServiceImpl implements ManagerService{

	@Autowired
	private ManagerMapper mapper;
	
	@Override
	public void personRegister(MemberVO mem) {
		mapper.insertMember(mem);
	}

	@Override
	public List<MemberVO> personList() {
		return mapper.memberList();
	}
	
	@Override
	public List<MemberVO> personListPage(SearchCriteria cri) {
		return mapper.memberListPage(cri);
	}
	
	@Override
	public int personCount(SearchCriteria cri) {
		return mapper.memberCount(cri);
	}

	@Override
	public List<DeptVO> deptSelect() {
		return mapper.deptSelect();
	}
	
	@Override
	public MemberVO personGet(Integer mno) {
		return mapper.memberGet(mno);
	}

	@Override
	public Integer personModify(MemberVO mem) {
		return mapper.memberUpdate(mem);
	}

	@Override
	public boolean personRemove(Integer mno) {
		return mapper.memberDelete(mno);
	}
	
	@Override
	public List<MemberVO> deptPersonList(SearchCriteria cri) {
		return mapper.deptMemberList(cri);
	}

	@Override
	public int deptPersonListCount(SearchCriteria cri) {
		return mapper.deptMemberCount(cri);
	}
	
	@Override
	public void deptRegister(String deptname) {
		mapper.insertDept(deptname);
	}
	
	@Override
	public Integer deptModify(DeptVO dept) {
		
		return mapper.updateDept(dept);
	}
	
	@Transactional
	@Override
	public Integer deptRemove(Integer deptno) {
		mapper.resetDeptMember(deptno);
		return mapper.deleteDept(deptno);
	}
	
	@Override
	public Integer deptMemberModify(MemberVO mem) {
		return mapper.updateDeptMember(mem);
	}

	@Override
	public String searchDeptName(SearchCriteria cri) {
		return mapper.searchDeptName(cri);
	}
	
}
