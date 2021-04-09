package org.ict.controller;

import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.GeneralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mine/*")
public class GeneralController {

	@Autowired
	private GeneralService service;

	@RequestMapping("/general")
	public String list(Model model) {

		log.info("general");
		model.addAttribute("general", service.getList());
		
		return "/mymenu/general";
	}
	@GetMapping("/get")
	public String get(Long bno, Model model) {
		model.addAttribute("board", service.get(bno));
		
		return "/mymenu/get";
	}
	

}
