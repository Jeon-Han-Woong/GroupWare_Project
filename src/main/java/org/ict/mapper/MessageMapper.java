package org.ict.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ict.domain.Criteria;
import org.ict.domain.MemberVO;
import org.ict.domain.MessageVO;
import org.ict.domain.SearchCriteria;

public interface MessageMapper {

	public List<MessageVO> takeMessageList(@Param("mno") Integer mno, @Param("cri") Criteria cri);
	
	public int takeMsgCount(Integer mno);
	
	public List<MessageVO> takeMessageListSearch(@Param("mno") Integer mno, @Param("cri") Criteria cri, 
												@Param("search") SearchCriteria search);
	
	public int takeMsgCountSearch(@Param("mno") Integer mno, @Param("search") SearchCriteria search);
	
	public List<MessageVO> sendMessageList(@Param("mno") Integer mno, @Param("cri") Criteria cri);
	
	public int sendMsgCount(Integer mno);
	
	public List<MessageVO> sendMessageListSearch(@Param("mno") Integer mno, @Param("cri") Criteria cri, 
												@Param("search") SearchCriteria search);
	
	public int sendMsgCountSearch(@Param("mno") Integer mno, @Param("search") SearchCriteria search);
	
	public List<MemberVO> takeMno(Integer mno);
	
	public void sendMsg(MessageVO vo);
	
	public void deleteTakeMsg(Integer msgno);
	
	public void deleteSendMsg(Integer msgno);
	
	public MessageVO getTakeMsg(Integer msgno);
	
	public MessageVO getSendMsg(Integer msgno);
	
	public void chkRead(@Param("msgno") Integer msgno, @Param("amount") int amount);
	
	public int notReadMsg(Integer mno);
	
	public int notSignBoard(Integer mno);
}
