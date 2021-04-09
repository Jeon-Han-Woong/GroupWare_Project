package org.ict.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.AutomapConstructor;
import org.ict.domain.BoardVO;
import org.ict.domain.Criteria;
import org.ict.domain.FormVO;
import org.ict.domain.NoticeVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.DocuRestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/docu")
public class DocuRestController {
	
	@Autowired
	private DocuRestService service;
	
	@GetMapping(value="/board/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> boardListPage(@PathVariable("page") int page) {
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		List<BoardVO> list = service.boardListPage(cri);
		
		int count = service.boardCount();
		
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
	
	@GetMapping(value="/board/{page}/{searchType}/{keyword}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> boardListPageSearch(@PathVariable ("page") int page, 
																@PathVariable ("searchType") String searchType ,
																@PathVariable ("keyword") String keyword){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);

		SearchCriteria search = new SearchCriteria();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		List<BoardVO> list = service.boardListPageSearch(cri, search);
		
		int count = service.boardCountSearch(search);
		
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
	
	@GetMapping(value="/notice/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> noticeListPage(@PathVariable("page") int page) {
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		List<NoticeVO> list = service.noticeListPage(cri);
		
		int count = service.noticeCount();
		
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
	
	@GetMapping(value="/notice/{page}/{searchType}/{keyword}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> noticeListPageSearch(@PathVariable ("page") int page, @PathVariable ("searchType") String searchType ,@PathVariable ("keyword") String keyword){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);

		SearchCriteria search = new SearchCriteria();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		List<NoticeVO> list = service.noticeListPageSearch(cri, search);
		
		int count = service.noticeCountSearch(search);
		
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
	
	@DeleteMapping(value="/boarddel/{bno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> boardRemove(@PathVariable("bno") int bno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.boardRemove(bno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@DeleteMapping(value="/noticedel/{nno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> noticeRemove(@PathVariable("nno") int nno) {
		
		ResponseEntity<String> entity = null;
		try {
			service.noticeRemove(nno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
}
