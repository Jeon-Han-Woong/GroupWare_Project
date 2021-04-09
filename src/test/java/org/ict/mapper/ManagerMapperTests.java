package org.ict.mapper;



import java.sql.Date;

import org.ict.domain.MemberVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ManagerMapperTests {
	
	@Autowired
	private ManagerMapper mapper;
	
//	@Test
	public void testInsertMember () {
		MemberVO vo = new MemberVO();
		vo.setMname("최성현");
		vo.setMpwd("abc3");
		vo.setMemail("b@bc.b");
		vo.setHiredate(new Date(1));
		vo.setDeptno(1002);
		vo.setPosition("과장");
		vo.setMpnum("010-6666-3194");
		vo.setMaddress("경기도 하남시");
		vo.setMbirth(new Date(2));
		vo.setGender(2);
		vo.setMilitary(2);
		vo.setMarry(1);
		vo.setVacachk(1);
		vo.setVacarem(12);
		
		mapper.insertMember(vo);
	}
	
//	@Test
	public void testMemberList() {
		mapper.memberList();
	}

//	@Test
	public void testMemberGet() {
		mapper.memberGet(1);
	}
	
	@Test
	public void testDeptSelect() {
		mapper.deptSelect();
	}
	
//	@Test
	public void testMemberUpdate() {
		MemberVO mem = new MemberVO();
		mem.setMname("강주은");
		mem.setMpwd("4443");
		mem.setMemail("a123@a.a");
		mem.setMpnum("010-3113-4952");
		mem.setHiredate(new Date(2));
		mem.setDeptno(1004);
		mem.setPosition("사원");
		mem.setMaddress("경기도 구리시");
		mem.setMbirth(new Date(2));
		mem.setGender(2);
		mem.setMilitary(2);
		mem.setMarry(2);
		mem.setVacachk(2);
		mem.setMno(2);
		mem.setVacarem(12);
		
		mapper.memberUpdate(mem);
	}
}
