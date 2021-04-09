package org.ict.controller;

import java.util.List;

import org.ict.domain.Criteria;
import org.ict.domain.DeptVO;
import org.ict.domain.MemberVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.method.annotation.ServletCookieValueMethodArgumentResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@Controller
@Log4j
@RequestMapping("/manage/*")
public class ManagerController {
	
	@Autowired
	ManagerService service;

	@GetMapping("/docu")
	public String docuMain() {
		
		return "/manage/docu_main";
	} // 문서 관리 메인
	
	
	@GetMapping("/personnel")
	public String personMain() {
		
		return "/manage/person_main";
	} // 인사 관리 메인
	
	@GetMapping("")
	public String managerMain() {
		
		return "/manage/manager_main";
	}
	
	@GetMapping("/permanage")
	public String personManage(Model model, SearchCriteria cri) {
		
		model.addAttribute("list", service.personListPage(cri));
		model.addAttribute("cri", cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.personCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		log.info(service.personListPage(cri));
		
		return "/manage/person_manage";
	} // 사원 관리 페이지
	
	@GetMapping("/perdetail")
	public String personDetail(Model model, Integer mno, SearchCriteria cri) {
		model.addAttribute("cri", cri);
		model.addAttribute("detail", service.personGet(mno));
		
		return "/manage/person_detail";
	} // 사원 상세 정보
	
	@PostMapping("/permodify")
	public String personModify(Integer mno, Model model, SearchCriteria cri) {
		
		model.addAttribute("detail", service.personGet(mno));
		model.addAttribute("dept", service.deptSelect());
		model.addAttribute("cri", cri);
		log.info(service.personGet(mno));
		log.info(service.deptSelect());
		return "/manage/person_modify";
	} // 사원 수정 페이지로 정보 전달 및 이동
	
	@PostMapping("/permodifyrun")
	public String personMoify(MemberVO mem, SearchCriteria cri, RedirectAttributes rttr) {
		
		service.personModify(mem);
		
		rttr.addFlashAttribute("bno", mem.getMno());
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		return "redirect:/manage/perdetail?mno=" + mem.getMno();
		
	} // 사원 수정 및 상세 정보로 이동
	
	@GetMapping("/permodifyget")
	public String personModifyGet(Integer mno, Model model, SearchCriteria cri) {
		
		model.addAttribute("detail", service.personGet(mno));
		model.addAttribute("dept", service.deptSelect());
		model.addAttribute("cri", cri);
		log.info(service.personGet(mno));
		log.info(service.deptSelect());
		return "/manage/person_modify";
	}
	
	@PostMapping("/perremove")
	public String personRemove(Integer mno, SearchCriteria cri, RedirectAttributes rttr) {
		service.personRemove(mno);
		
		rttr.addFlashAttribute("mno", mno);
		
		rttr.addAttribute("page", cri.getPage());
		
		return "redirect:/manage/permanage";
	} // 사원 삭제 및 사원 관리 페이지로 이동
	
	@GetMapping("/perremoveget")
	public String personRemoveGet(Integer mno, SearchCriteria cri, RedirectAttributes rttr) {
		service.personRemove(mno);
		
		rttr.addFlashAttribute("mno", mno);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/manage/permanage";
	} 
	
	@GetMapping("/personreg")
	public String personRegister(Model model) {
		model.addAttribute("dept", service.deptSelect());
		
		return "/manage/person_register";
	} // 사원 등록 페이지로 이동
	
	@PostMapping("/personreg")
	public String personRegister(MemberVO mem, RedirectAttributes rttr) {
		
		service.personRegister(mem);
		
		return "redirect:/manage/permanage";
	} // 사원 등록 및 사원 관리로 이동
	
	@GetMapping("/deptmanage")
	public String deptManage(Model model, SearchCriteria cri) {
		model.addAttribute("dept", service.deptSelect());
		model.addAttribute("deptMem", service.deptPersonList(cri));
		model.addAttribute("deptname", service.searchDeptName(cri));
		
		model.addAttribute("cri", cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.deptPersonListCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		
		return "/manage/dept_manage";
	} // 부서 관리 페이지

	@PostMapping("/deptreg")
	public String deptRegister(Model model, String deptname, RedirectAttributes rttr) {
		service.deptRegister(deptname);
		
		return "redirect:/manage/deptmanage";
	}
	
	@PostMapping("/deptmodify")
	public String deptModify(DeptVO dept, RedirectAttributes rttr, SearchCriteria cri) {
		service.deptModify(dept);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("deptoption", cri.getDeptoption());
		
		return "redirect:/manage/deptmanage";
	}
	
	@PostMapping("/deptremove")
	public String deptRemove(Integer deptno, RedirectAttributes rttr) {
		service.deptRemove(deptno);
		
		return "redirect:/manage/deptmanage";
	}
	
	@PostMapping("/deptmembermodify")
	public String deptMemberModify(MemberVO mem, RedirectAttributes rttr, SearchCriteria cri) {
		service.deptMemberModify(mem);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("deptoption", cri.getDeptoption());
		
		return "redirect:/manage/deptmanage";
	}
	
	@GetMapping("/formmanage")
	public String formManage(Model model, SearchCriteria cri) {
//		model.addAttribute("form", service.formList());
		return "/manage/form_manage";
	} // 양식 관리 페이지
	
	
	@GetMapping("/documanage")
	public String docuManage(Model model) {
//		model.addAttribute("document", service.docuList());
//		model.addAttribute("board", service.boardList());
		
		return "/manage/docu_manage";
	} // 게시물 관리 페이지
}
