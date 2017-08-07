package help.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import help.vo.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	SqlSession session;

	@Override
	public int loginCheck(MemberVO vo) {
		return session.selectOne("loginMapper.loginCheck", vo);
	}
	
	@Override
	public MemberVO memberSearch(String id) {
		return session.selectOne("loginMapper.memberSearch", id);
	}

}
