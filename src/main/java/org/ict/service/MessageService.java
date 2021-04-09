package org.ict.service;

import java.util.List;

import org.ict.domain.Criteria;
import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;
import org.ict.domain.SearchCriteria;

public interface MessageService {

	public List<MessageVO> takeMessageList(Integer mno, Criteria cri);
	
	public int takeMsgCount(Integer mno);
	
	public List<MessageVO> takeMessageListSearch(Integer mno, Criteria cri, SearchCriteria search);
	
	public int takeMsgCountSearch(Integer mno, SearchCriteria search);
	
	public List<MessageVO> sendMessageList(Integer mno, Criteria cri);
	
	public int sendMsgCount(Integer mno);
	
	public List<MessageVO> sendMessageListSearch(Integer mno, Criteria cri, SearchCriteria search);
	
	public int sendMsgCountSearch(Integer mno, SearchCriteria search);
	
	public List<MemberVO> takeMno(Integer mno);
	
	public void sendMsg(MessageVO vo);
	
	public void RemoveTakeMsg(Integer msgno);
	
	public void RemoveSendMsg(Integer msgno);
	
	public MessageVO detailTakeMsg(Integer msgno);
	
	public MessageVO detailSendMsg(Integer msgno);
	
	public int notReadMsg(Integer mno);
	
	public int notSignBoard(Integer mno);
}
