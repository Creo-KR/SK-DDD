package help.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import help.dao.ChatDAO;
import help.vo.ChatroomVO;

@Service
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	ChatDAO dao;

	@Override
	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo) {
		return dao.getChatroomListByUser(vo);
	}

}
