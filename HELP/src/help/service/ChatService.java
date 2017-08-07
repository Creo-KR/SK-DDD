package help.service;

import java.util.List;

import help.vo.ChatVO;
import help.vo.ChatroomVO;

public interface ChatService {
	
	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo);
	
	public void addChatroom(ChatroomVO vo);
	
	public List<ChatVO> getChatByChatroom(ChatroomVO vo);
}
