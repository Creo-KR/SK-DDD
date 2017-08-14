package help.test;


import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import help.dao.ChatDAO;
import help.dao.MemberDAO;
import help.dao.TradeDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/beans.xml")
public class HelpJunitTest {

	@Autowired
	SqlSession session;

	@Autowired
	MemberDAO memberDAO;
	@Autowired
	ChatDAO chatDAO;

	@Autowired
	TradeDAO tradeDAO;
	
	@Test
	public void test() {
		System.out.println(session.selectList("tradeMapper.selectInProgressTrade", 31));
	}
}
