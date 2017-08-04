package help.dao;

import java.util.List;

import help.vo.ChatroomVO;

public interface ChatDAO {

	public void addChatroom(ChatroomVO vo);

	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo);

	public ChatroomVO getChatroomByUsers(ChatroomVO vo);

	public void updateChatroomDate(ChatroomVO vo);
	
	public void leaveChatroom(ChatroomVO vo, int user);

}