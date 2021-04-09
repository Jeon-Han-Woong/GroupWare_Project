package org.ict.controller;

import org.ict.domain.MemberVO;
import org.ict.service.ProfileRestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/profileRest")
public class ProfileRestController {

	@Autowired
	private ProfileRestService service;
	
	@GetMapping(value="/{mno}", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public ResponseEntity<MemberVO> detailMyInfO(@PathVariable("mno") Integer mno){
		
		ResponseEntity<MemberVO> entity = null;
		
		try {
			entity = new ResponseEntity<MemberVO>(service.detailMyInfo(mno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<MemberVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
//	@GetMapping(value="/verify/{mno}", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
//	public ResponseEntity<String> verifyPwd(@PathVariable("mno") Integer mno) {
//		
//		ResponseEntity<String> entity = null;
//		
//		try {
//			entity = new ResponseEntity<String>(service.verifyPwd(mno), HttpStatus.OK);
//		} catch (Exception e) {
//			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, 
					value = "/modifyinfo/{mno}", consumes = "application/json",
					produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modifyInfo(@RequestBody MemberVO vo, @PathVariable("mno") Integer mno) {
		
		ResponseEntity<String> entity = null;
		
		try {
			vo.setMno(mno);
			service.modifyInfo(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
