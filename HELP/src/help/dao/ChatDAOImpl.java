package help.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import help.vo.ChatVO;
import help.vo.ChatroomVO;

@Repository
public class ChatDAOImpl implements ChatDAO {

	@Autowired
	SqlSession session;

	public void addChatroom(ChatroomVO vo) {
		session.insert("chatMapper.addChatroom", vo);
	}

	public List<ChatroomVO> getChatroomListByUser(ChatroomVO vo) {
		vo.setLastMessage(session.selectOne("chatMapper.getLastMessageByChatroom", vo));
		return session.selectList("chatMapper.getChatroomListByUser", vo);
				
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
	
	public void sendChat(ChatVO vo) {
		session.insert("chatMapper.sendChat", vo);
	}

	public List<ChatVO> getChatByChatroom(ChatroomVO vo) {
		return session.selectList("chatMapper.getChatByChatroom", vo);
	}

	public void checkChat(ChatVO vo) {
		session.update("chatMapper.checkChat", vo);
	}
	
	public String getLastMessageByChatroom(Integer cr_no) {
		return session.selectOne("chatMapper.getLastMessageByChatroom", cr_no);
	}
	
	@Override
	public int chatRefreshCount(int ch_receiver) {
		return session.selectOne("chatMapper.chatRefreshCount", ch_receiver);
	}
}
