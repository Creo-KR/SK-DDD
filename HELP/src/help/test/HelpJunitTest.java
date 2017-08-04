package help.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import help.dao.ChatDAO;
import help.dao.MemberDAO;
import help.vo.ChatroomVO;
import help.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/beans.xml")
public class HelpJunitTest {

	@Autowired
	SqlSession session;

	@Autowired
	MemberDAO memberDAO;
	@Autowired
	ChatDAO chatDAO;

	@Test
	@Ignore
	public void addMember() {
		//MemberVO member = new MemberVO("prohibit174", "1234", "김동욱", "prohibit174@nate.com", "01022611085", 0, 0);

		//session.insert("memberMapper.addMember", member);
	}

	@Test
	@Ignore
	public void addChatroom() {
		chatDAO.addChatroom(new ChatroomVO(0, 1, 5, null, 1, 1));
	}

	@Test
	@Ignore
	public void findChatroomlist() {
		List<ChatroomVO> list = chatDAO.getChatroomListByUser(new ChatroomVO(0, 1, 5, null, 1, 1));
		System.out.println(list.size());
	}

	@Test
	@Ignore
	public void findChatroom() {
		chatDAO.getChatroomByUsers(new ChatroomVO(0, 1, 5, null, 1, 1)).getCr_no();
	}

	@Test
	@Ignore
	public void updateChatroomDate() {
		chatDAO.updateChatroomDate(new ChatroomVO(4, 1, 5, null, 1, 1));
	}

	@Test
	public void leaveChatroom() {
		chatDAO.leaveChatroom(new ChatroomVO(4, 1, 5, null, 1, 1), 2);
	}

}
