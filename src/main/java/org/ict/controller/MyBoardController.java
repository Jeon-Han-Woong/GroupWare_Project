package org.ict.controller;

import org.ict.domain.MemberVO;
import org.ict.service.MyMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/myboard/*")
public class MyBoardController {

	@Autowired
	private MyMemberService member;

	@RequestMapping("/list")
	public String list(Model model, Long mno) {

		model.addAttribute("list", member.getList());
//		log.info("list");
		return "/mymenu/list";

	}

	@RequestMapping(value = "/mget", method = {RequestMethod.GET})
	public String get(Long mno, Model model) {
		model.addAttribute("board", member.get(mno));
		MemberVO board = member.get(mno);
		model.addAttribute("board", board);
		
		return "/mymenu/mget";
		
//		log.info("mget");
	}

//	@PostMapping("/modify")
//	public String modify(Model model, Long mno) {
//
//		MemberVO board = member.get(mno);
//		model.addAttribute("board", board);
//		log.info("modify1");
//
//		return "/board/modify";
//	}

	@PostMapping("/modifyrun")
	public String modify(MemberVO board,RedirectAttributes rttr,Model model) {
		
		member.modify(board);
		
//		rttr.addAttribute("board", member.modify(board));

		log.info(board.getMno());

		return "redirect:/board/mget?mno=" + board.getMno();
//		return "redirect:/board/modifyrun";
//		return "/board/mget";
	}
	

}
