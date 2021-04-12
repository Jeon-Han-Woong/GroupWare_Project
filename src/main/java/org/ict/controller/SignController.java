package org.ict.controller;

import org.ict.domain.NoticeVO;
import org.ict.domain.Criteria;
import org.ict.domain.MemberVO;
import org.ict.domain.BoardVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.SignService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/sign/*")
public class SignController {
	
	// 공지사항 삭제 예정
	
	@Autowired
	private SignService service;
	
	
	@GetMapping("/notSignList")
	public String notSignList() {
		
		return "/sign/notSignList";
	}
	
	

	@GetMapping("/reportRead") // 문서 상세보기
	public String reportRead(int bno, Model model, SearchCriteria cri) {
		
		model.addAttribute("cri", cri);
		model.addAttribute("reportRead", service.reportRead(bno));
		
		return "/sign/reportRead";
	
	}
	
	@PostMapping("/reportWrite") // 보고서 작성 POST
	public String reportWrite(BoardVO board) {
		
		service.reportWrite(board);
		
		return "redirect:/mymenu/mydocu?mno=" + board.getMno();
	}
	
	@GetMapping("/reportWrite") // 보고서 작성 GET
	public String reportWrite(Model model) {
		
		model.addAttribute("deptSelect", service.deptSelect());
		
		return "/sign/reportWrite";
	}
	
	@GetMapping("/reportModifyForm") // 문서 수정 양식
	public String reportModifyForm(int bno, Model model) {
		
		BoardVO board = new BoardVO();
		
		board = service.reportModifyForm(bno);
		
		model.addAttribute("board", board);
		
		return "/sign/reportModifyForm";
	}
	
	@PostMapping("/reportModify") // 문서 수정
	public String reportModify(BoardVO board){
		
		service.reportModify(board);
		
		
		return "redirect:/sign/reportRead?bno=" + board.getBno();
	}
	
	@GetMapping("/reportDelete") // 문서 삭제
	public String reportDelete(int bno) {
		
		service.reportDelete(bno);
		
		return "redirect:/sign/signSuccessList";
	}
	
	@PostMapping("/applicationWrite") // 신청서 작성 POST
	public String applicationWrite(BoardVO board , RedirectAttributes rttr, String seldpn) {
		
		service.reportWrite(board);
		
		
		
		return "redirect:/sign/applicationWrite";
	}
	
	@GetMapping("/documentWrite") //신청서 작성 양식
	public String DocumentWrite(Model model) {
		
		model.addAttribute("getForm", service.getForm());
		
		model.addAttribute("deptSelect", service.deptSelect());
		
		return "/sign/documentWrite";
	}
	
	@RequestMapping("/signSuccessList") // 문서 열람
	public String signSuccessList(Model model, SearchCriteria cri) {
		model.addAttribute("signStateListB", service.getListCriteriaB(cri));
		
		model.addAttribute("cri", cri);
		
		model.addAttribute("page", cri.getPage());
		
//		model.addAttribute("list", 
//				service.getListPage(cri));
//		model.addAttribute("cri", cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.getcountPage0(cri));
		model.addAttribute("pageMaker", pageMaker);
		log.info(pageMaker.toString());
		
		return "/sign/signSuccessList";
	}
	
	@RequestMapping("/signStateList") // 문서 결재 상태
	public String signStateList(Model model, SearchCriteria cri) {
		
		SearchCriteria cri2 = new SearchCriteria();
		
		model.addAttribute("signStateListA", service.getListCriteriaA(cri));
		model.addAttribute("signStateListB", service.getListCriteriaB(cri2));
		
		model.addAttribute("cri", cri);
		model.addAttribute("cri2", cri2);
		
		model.addAttribute("page", cri.getPage());
		model.addAttribute("page2", cri2.getPage());
		
		PageMaker pageMaker = new PageMaker();
		PageMaker pageMaker2 = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker2.setCri(cri2);
		//pageMaker.setTotalCount(131);
		
		pageMaker.setTotalCount(service.getcountPage(cri));
		pageMaker2.setTotalCount(service.getcountPage(cri2));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("pageMaker2", pageMaker2);
		log.info(pageMaker.toString());
		
		return "/sign/signStateList";
	}
	
	@RequestMapping("/signSuccess")
	public String signerSelect(BoardVO board ,RedirectAttributes rttr) {
		
		service.signSucceess(board);
		
		return "redirect:/sign/notSignList";
	}
	
	@RequestMapping("/selectDoc")
	public String selectDoc() {
		
		return "/sign/selectDoc";
	}
	
	@RequestMapping("/mySuccessList")
	public String mySuccessList(Model model, SearchCriteria cri, Integer mno) {
		
		model.addAttribute("mySuccessList", service.mySuccessList(cri, mno));
		
		
		model.addAttribute("cri", cri);
		
		model.addAttribute("page", cri.getPage());
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.mySuccessCountPageNum(cri, mno));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/sign/mySuccessList";
	}
	
	@RequestMapping("/myWaitingList")
	public String myWaitingList(Model model, SearchCriteria cri, Integer mno) {
		
		model.addAttribute("myWaitingList", service.myWaitingList(cri, mno));
		
		model.addAttribute("cri", cri);
		
		model.addAttribute("page", cri.getPage());
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.myWaitingCountPageNum(cri, mno));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/sign/myWaitingList";
	}
	
}












