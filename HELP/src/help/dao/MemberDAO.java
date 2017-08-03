package help.dao;

import help.vo.MemberVO;

public interface MemberDAO {

	public void addMember(MemberVO vo);
	public Integer idCheck(String m_id);
}
