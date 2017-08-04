package help.service;

import java.util.List;

import help.vo.ChatroomVO;
import help.vo.MemberVO;

public interface ChatService {
	
	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo);
}
