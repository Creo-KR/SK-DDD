package help.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import help.vo.GosuVO;
import help.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	SqlSession session;
	
	@Override
	public void addMember(MemberVO vo) {
		session.insert("memberMapper.addMember", vo);
	}

	@Override
	public Integer idCheck(String m_id) {
		 return session.selectOne("memberMapper.idCheck", m_id);
	}

	@Override
	public void addGosu(GosuVO vo) {
		session.insert("memberMapper.addGosu", vo);
	}

	@Override
	public int getMember(String m_id) {
		return session.selectOne("memberMapper.getMember", m_id);
	}

}
