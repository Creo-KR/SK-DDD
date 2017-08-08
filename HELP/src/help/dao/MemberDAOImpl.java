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
	public MemberVO getMemberByNo(Integer m_no) {
		return session.selectOne("memberMapper.getMemberByNo", m_no);
	}

	@Override
	public MemberVO getMember(String m_id) {
		 return session.selectOne("memberMapper.getMember", m_id);
	}

	@Override
	public int mypageDivision(String m_id) {
		return session.selectOne("memberMapper.mypageDivision", m_id);
	}

	@Override
	public int pwdCheck(MemberVO vo) {
		return session.selectOne("memberMapper.pwdCheck", vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		session.update("memberMapper.updateMember", vo);
	}

}
