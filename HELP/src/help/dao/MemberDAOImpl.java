package help.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import help.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	SqlSession session;
	
	@Override
	public void addMember(MemberVO vo) {
		session.insert("memberMapper.addMember", vo);
	}

}
