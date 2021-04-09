package org.ict.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.Criteria;
import org.ict.domain.FormVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.FormRestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/form")
public class FormRestController {
	
	@Autowired
	private FormRestService service;
	
	@GetMapping(value="/all/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> formListPage(@PathVariable ("page") int page){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		List<FormVO> list = service.formListPage(cri);
		
		int count = service.formCount();
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		
		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value="/all/{page}/{keyword}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> formListPageSearch(@PathVariable ("page") int page, @PathVariable ("keyword") String keyword){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);

		SearchCriteria search = new SearchCriteria();
		search.setKeyword(keyword);
		
		List<FormVO> list = service.formListPageSearch(cri, search);
		
		int count = service.formCountSearch(keyword);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		result.put("cri", cri);
		
		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
//	@GetMapping(value="/paging", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
//	public ResponseEntity<Integer> formPage(SearchCriteria cri) {
//		
//		ResponseEntity<Integer> entity = null;
//		
//		try {
//			
//			entity = new ResponseEntity<Integer>(service.formCount(cri.getKeyword()), HttpStatus.OK);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
//		}
//		
//		return entity;
//	}
	
	
	@PostMapping(value="", consumes="application/json",
							produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> formRegister(
							@RequestBody FormVO form){
		
		ResponseEntity<String> entity = null;
		
		try {
			service.formRegister(form);
			entity = new ResponseEntity<String>(
						"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, 
					value="/{fno}", consumes="application/json",
					produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> formModify(@RequestBody FormVO form, @PathVariable("fno") Integer fno) {
		ResponseEntity<String> entity = null;
		
		try {
			form.setFno(fno);
			service.formModify(form);
			entity = new ResponseEntity<String>(
						"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH}, 
					value="/state/{fno}", consumes="application/json",
					produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> formDelete(@PathVariable("fno") Integer fno) {
		ResponseEntity<String> entity = null;
		
		try {
			service.formRemove(fno);
			entity = new ResponseEntity<String>(
						"SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

}