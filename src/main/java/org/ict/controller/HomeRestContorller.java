package org.ict.controller;

import java.util.List;

import org.ict.domain.BoardVO;
import org.ict.domain.NoticeVO;
import org.ict.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/home")
public class HomeRestContorller {
	
	@Autowired
	private HomeService service;

	@GetMapping(value= "/notice", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<NoticeVO>> notice(){
		
		ResponseEntity<List<NoticeVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<NoticeVO>>(service.noticeLatest(), HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<NoticeVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value= "/nosign/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<BoardVO>> noSign(@PathVariable("mno") Integer mno) {
		
		ResponseEntity<List<BoardVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<BoardVO>>(service.noSignBoard(mno), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<BoardVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}
