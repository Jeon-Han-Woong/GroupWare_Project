package org.ict.service;

import java.util.List;

import org.ict.domain.Criteria;
import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;
import org.ict.domain.SearchCriteria;
import org.ict.mapper.MessageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageMapper mapper;
	
	@Override
	public List<MessageVO> takeMessageList(Integer mno, Criteria cri) {
		return mapper.takeMessageList(mno, cri);
	}
	
	@Override
	public int takeMsgCount(Integer mno) {
		return mapper.takeMsgCount(mno);
	}
	
	@Override
	public List<MessageVO> takeMessageListSearch(Integer mno, Criteria cri, SearchCriteria search) {
		return mapper.takeMessageListSearch(mno, cri, search);
	}
	
	@Override
	public int takeMsgCountSearch(Integer mno, SearchCriteria search) {
		return mapper.takeMsgCountSearch(mno, search);
	}
	
	@Override
	public List<MessageVO> sendMessageList(Integer mno, Criteria cri) {
		return mapper.sendMessageList(mno, cri);
	}
	
	@Override
	public int sendMsgCount(Integer mno) {
		return mapper.sendMsgCount(mno);
	}
	
	@Override
	public List<MessageVO> sendMessageListSearch(Integer mno, Criteria cri, SearchCriteria search) {
		return mapper.sendMessageListSearch(mno, cri, search);
	}
	
	@Override
	public int sendMsgCountSearch(Integer mno, SearchCriteria search) {
		return mapper.sendMsgCountSearch(mno, search);
	}

	@Override
	public List<MemberVO> takeMno(Integer mno) {
		return mapper.takeMno(mno);
	}

	@Override
	public void sendMsg(MessageVO vo) {
		mapper.sendMsg(vo);
	}

	@Override
	public void RemoveTakeMsg(Integer msgno) {
		mapper.deleteTakeMsg(msgno);
	}

	@Override
	public void RemoveSendMsg(Integer msgno) {
		mapper.deleteSendMsg(msgno);
	}

	@Transactional
	@Override
	public MessageVO detailTakeMsg(Integer msgno) {
		mapper.chkRead(msgno, 1);
		return mapper.getTakeMsg(msgno);
	}

	@Override
	public MessageVO detailSendMsg(Integer msgno) {
		return mapper.getSendMsg(msgno);
	}

	@Override
	public int notReadMsg(Integer mno) {
		return mapper.notReadMsg(mno);
	}

	@Override
	public int notSignBoard(Integer mno) {
		return mapper.notSignBoard(mno);
	}


}
