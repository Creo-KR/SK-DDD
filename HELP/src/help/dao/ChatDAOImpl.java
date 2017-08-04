package help.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import help.vo.ChatroomVO;

@Repository
public class ChatDAOImpl implements ChatDAO {

	@Autowired
	SqlSession session;

	public void addChatroom(ChatroomVO vo) {
		session.insert("chatMapper.addChatroom", vo);
	}

	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo) {
		return session.selectList("chatMapper.getChatroomListByUsers", vo);
	}

	public ChatroomVO getChatroomByUsers(ChatroomVO vo) {
		return session.selectOne("chatMapper.getChatroomByUsers", vo);
	}

	public void updateChatroomDate(ChatroomVO vo) {
		session.update("chatMapper.updateChatroomDate", vo);
	}

	public void leaveChatroom(ChatroomVO vo, int user) {
		if (user == 1)
			session.update("chatMapper.leaveChatroomUser1", vo);
		else if (user == 2)
			session.update("chatMapper.leaveChatroomUser2", vo);
	}
}
