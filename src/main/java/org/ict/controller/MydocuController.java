package org.ict.controller;

import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.MydocuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/mymenu/*")
public class MydocuController {

	@Autowired
	private MydocuService service;

	@RequestMapping("/mydocu")
	public String mydocu() {

	
		

		return "/mymenu/mydocu";
	}

	@GetMapping("/mydocuread")
	public String docuread(Model model, Long bno, SearchCriteria cri) {
		model.addAttribute("cri", cri);
		model.addAttribute("board", service.get(bno));
		return "/mymenu/mydocuread";
	}

	@PostMapping("/mydocumodify")
	public String modify(Model model, Long bno, SearchCriteria cri) {
		BoardVO board = service.get(bno);

		model.addAttribute("board", board);
		model.addAttribute("cri", cri);
		return "/mymenu/mydocumodify";
	}

	@PostMapping("/documodifyrun")
	public String modify(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) {
		service.modify(board);

		rttr.addFlashAttribute("bno", board.getBno());
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/mymenu/mydocuread?bno=" + board.getBno();
	}

	@PostMapping("/remove")
	public String remove(Long bno, SearchCriteria cri, RedirectAttributes rttr) {
		service.remove(bno);
		rttr.addFlashAttribute("bno", bno);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:/mymenu/mydocu";
	}

}
