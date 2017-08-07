package help.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import help.dao.ChatDAO;
import help.vo.ChatVO;
import help.vo.ChatroomVO;

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
	
	@Override
	public List<ChatVO> getChatByChatroom(ChatroomVO vo) {
		return dao.getChatByChatroom(vo);
	}

}
