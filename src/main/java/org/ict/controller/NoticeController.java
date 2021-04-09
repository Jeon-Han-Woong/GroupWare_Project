package org.ict.controller;

import org.ict.domain.NoticeVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.NoticeService;
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

//	Board 폴더로 매핑합니다.
@RequestMapping("/board/*")
public class NoticeController {
	
//	org.ict.service.NoticeService 불러옴
	@Autowired
	private NoticeService service;
	
//	공지사항 리스트 가져옵니다. (noticeList.jsp)
	@RequestMapping("/noticeList")
	public void noticeList(Model model, SearchCriteria cri) {
		log.info(cri);
		model.addAttribute("noticeList", service.getListPage(cri));
		model.addAttribute("cri", cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.getCountPage(cri));
		model.addAttribute("pageMaker", pageMaker);
	}
	
//	공지사항 글을 읽습니다.(noticeRead.jsp)
	@GetMapping("/noticeRead")
	public String noticeRead(Long nno, Model model, SearchCriteria cri) {
		log.info(service.noticeRead(nno));
		model.addAttribute("noticeRead", service.noticeRead(nno));
		model.addAttribute("cri", cri);
		
		return "/board/noticeRead";
	}
	
//	이건 뭔가요?
	@RequestMapping("/signStateList")
	public String signStateList(Model model) {
		
		model.addAttribute("signStateList", service.signStateList());
		return "/board/signStateList";
	}
	
//	글작성 페이지입니다.(write.jsp)
	@PostMapping("/noticeWrite")
	public String writing(NoticeVO board) {
		service.write_new(board);
		
		log.info(board);
		return "redirect:/board/noticeList";
	}
	
//	글작성 페이지이기는 한데, return 값이 /board/write가 아니면 안됨
	@GetMapping("/noticeWrite")
	public String writing(Model mdl) {
		mdl.addAttribute("catlist", service.getFormList());
		
		return "/board/noticeWrite";
	}
	
//	편집 페이지입니다. 글작성 내용이랑 비슷합니다.
	@PostMapping("/edit")
	public String editor(Model mdl, SearchCriteria cri, Long nno) {
		NoticeVO board = service.noticeRead(nno);
		log.info(mdl.addAttribute("noticeRead", board));
		
		mdl.addAttribute("catlist", service.getFormList());
		mdl.addAttribute("noticeRead", board);
		mdl.addAttribute("cri", cri);
		
		return "/board/edit";
	}
	
//	이것도 마찬가지입니다. 다만 어떻게 되는 지 모르겠네요.
	@PostMapping("/editcomplete")
	public String editor(NoticeVO board, SearchCriteria cri, RedirectAttributes rttr) {
		service.edits(board);
		
		rttr.addFlashAttribute("nno", board.getNno());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/noticeRead?nno="+board.getNno();
	}
	
//	삭제 페이지입니다.
	@PostMapping("/remove")
	public String remove(Long nno, RedirectAttributes rttr, SearchCriteria cri, Model model) {
		
		service.remove(nno);
		rttr.addFlashAttribute("nno", nno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/noticeList";
	}
}