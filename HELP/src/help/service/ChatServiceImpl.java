package help.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import help.dao.ChatDAO;
import help.vo.ChatVO;
import help.vo.ChatroomVO;
import help.vo.MemberVO;

@Service
public class ChatServiceImpl implements ChatService {

	@Autowired
	ChatDAO dao;

	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo) {
		List<ChatroomVO> list = dao.getChatroomListByUser(vo);
		for (ChatroomVO v : list) {
			v.setLastMessage(dao.getLastMessageByChatroom(v.getCr_no()));
		}
		return list;
	}

	public void addChatroom(ChatroomVO vo) {
		dao.addChatroom(vo);
	}

	public List<ChatVO> getChatByChatroom(ChatroomVO vo) {
		return dao.getChatByChatroom(vo);
	}

	public void sendChat(ChatVO vo) {
		dao.sendChat(vo);
	}

	@Override
	public int chatRefreshCount(int ch_receiver) {
		return dao.chatRefreshCount(ch_receiver);
	}

	@Override
	public void checkChat(ChatVO vo) {
		dao.checkChat(vo);
	}

	@Override
	public int chatroomRefresh(ChatVO vo) {
		return dao.chatroomRefresh(vo);
	}

	@Override
	public void leaveChat(ChatroomVO vo, MemberVO user) {
		ChatroomVO room = dao.getChatroomByNo(vo);
		if (room.getCr_user1().getM_no().equals(user.getM_no())) {
			dao.leaveChatroom(room, 1);
		} else if (room.getCr_user2().getM_no().equals(user.getM_no())) {
			dao.leaveChatroom(room, 2);
		}
	}

}
