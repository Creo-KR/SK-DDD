package help.service;

import java.util.List;

import help.vo.ChatVO;
import help.vo.ChatroomVO;
import help.vo.MemberVO;

public interface ChatService {
	
	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo);
	
	public void addChatroom(ChatroomVO vo);
	
	public List<ChatVO> getChatByChatroom(ChatroomVO vo);
	
	public void sendChat(ChatVO vo);
	
	public int chatRefreshCount(int ch_receiver);
	
	public void checkChat(ChatVO vo);
	
	public int chatroomRefresh(ChatVO vo);
	
	public void leaveChat(ChatroomVO vo, MemberVO user);
	
	public ChatroomVO getChatroomByNo(Integer no);
}
