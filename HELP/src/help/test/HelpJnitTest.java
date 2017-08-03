package help.test;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import help.dao.MemberDAO;
import help.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/beans.xml")
public class HelpJnitTest {

	@Autowired
	SqlSession session;
	
	@Autowired
	MemberDAO dao;
	
	@Test
	public void addMember() {
		MemberVO member = new MemberVO(
				"prohibit174", "1234", "김동욱", "prohibit174@nate.com", "01022611085", 0, 0
				);
		
		session.insert("memberMapper.addMember", member);
	}

}
