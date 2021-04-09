package org.ict.mapper;

import java.util.List;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.BoardVO;
import org.ict.domain.FormVO;
import org.ict.domain.MemberVO;
import org.ict.domain.SearchCriteria;

public interface ManagerMapper {
	
	public void insertMember(MemberVO mem);
	
	public List<MemberVO> memberList();
	
	public List<MemberVO> memberListPage(SearchCriteria cri);
	
	public int memberCount(SearchCriteria cri);
	
	public List<DeptVO> deptSelect();

	public MemberVO memberGet(Integer mno);
	
	public Integer memberUpdate(MemberVO mem);
			
	public boolean memberDelete(Integer mno);
	
	public List<MemberVO> deptMemberList(SearchCriteria cri);
	
	public int deptMemberCount(SearchCriteria cri);
	
	public void insertDept(String deptname);
	
	public Integer resetDeptMember(Integer dept);
	
	public Integer updateDept(DeptVO dept);
	
	public Integer deleteDept(Integer deptno);
	
	public Integer updateDeptMember(MemberVO mem);
	
	public String searchDeptName(SearchCriteria cri);

}
