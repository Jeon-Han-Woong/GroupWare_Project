package org.ict.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.Criteria;
import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;
import org.ict.domain.PageMaker;
import org.ict.domain.SearchCriteria;
import org.ict.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/message")
public class MessageRestController {

	@Autowired
	private MessageService service;
	
	@GetMapping(value = "/take/{mno}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> takeList(@PathVariable("mno") Integer mno, @PathVariable("page") int page){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		List<MessageVO> list = service.takeMessageList(mno, cri);
		
		int count = service.takeMsgCount(mno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		
		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	
	@GetMapping(value = "/take/{mno}/{page}/{searchType}/{keyword}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> takeListSearch(@PathVariable("mno") Integer mno, 
															@PathVariable("page") int page, 
															@PathVariable("searchType") String searchType, 
															@PathVariable("keyword") String keyword){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		SearchCriteria search = new SearchCriteria();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		List<MessageVO> list = service.takeMessageListSearch(mno, cri, search);
		
		int count = service.takeMsgCountSearch(mno, search);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		result.put("cri", cri);
		
		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value = "/send/{mno}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> sendList(@PathVariable("mno") Integer mno, @PathVariable("page") int page){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		List<MessageVO> list = service.sendMessageList(mno, cri);
		
		int count = service.sendMsgCount(mno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		
		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	
	@GetMapping(value = "/send/{mno}/{page}/{searchType}/{keyword}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> sendListSearch(@PathVariable("mno") Integer mno, @PathVariable("page") int page, @PathVariable("searchType") String searchType, @PathVariable("keyword") String keyword){
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<String, Object>();
		
		Criteria cri = new Criteria();
		cri.setPage(page);
		
		SearchCriteria search = new SearchCriteria();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		List<MessageVO> list = service.sendMessageListSearch(mno, cri, search);
		
		int count = service.sendMsgCountSearch(mno, search);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(count);
		
		result.put("list", list);
		result.put("pageMaker", pageMaker);
		result.put("cri", cri);
		
		try {
			entity = new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}

	
	@GetMapping(value = "/takemno/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<MemberVO>> takeMno(@PathVariable("mno") Integer mno) {
		
		ResponseEntity<List<MemberVO>> entity = null;
		
		try {
			entity = new ResponseEntity<List<MemberVO>>(service.takeMno(mno),HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<List<MemberVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@PostMapping(value = "/sendmsg", consumes="application/json",
									produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> sendMessage(
							@RequestBody MessageVO vo) {
		ResponseEntity<String> entity = null;
		
		try {
			service.sendMsg(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},
					value = "/remove/take/{msgno}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> removeTakeMessage (@PathVariable ("msgno") Integer msgno){
		ResponseEntity<String> entity = null;
		
		try {
			service.RemoveTakeMsg(msgno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},
			value = "/remove/send/{msgno}", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> removeSendMessage (@PathVariable ("msgno") Integer msgno){
		ResponseEntity<String> entity = null;
	
		try {
			service.RemoveSendMsg(msgno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value = "/detail/take/{msgno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<MessageVO> detailTakeMessage (@PathVariable ("msgno") Integer msgno) {
		
		ResponseEntity<MessageVO> entity = null;
		
		try {
			entity = new ResponseEntity<MessageVO>(service.detailTakeMsg(msgno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<MessageVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value = "/detail/send/{msgno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<MessageVO> detailSendMessage (@PathVariable ("msgno") Integer msgno) {
		
		ResponseEntity<MessageVO> entity = null;
		
		try {
			entity = new ResponseEntity<MessageVO>(service.detailSendMsg(msgno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<MessageVO>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@GetMapping(value = "/alert/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Integer> notReadMessage (@PathVariable("mno") Integer mno) {
		ResponseEntity<Integer> entity = null;
		
		try {
			entity = new ResponseEntity<Integer>(service.notReadMsg(mno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@GetMapping(value = "/sign/{mno}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Integer> notSignBoard (@PathVariable("mno") Integer mno) {
		ResponseEntity<Integer> entity = null;
		
		try {
			entity = new ResponseEntity<Integer>(service.notSignBoard(mno), HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Integer>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
