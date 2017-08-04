package help.dao;

import help.vo.GosuVO;
import help.vo.MemberVO;

public interface MemberDAO {

	public void addMember(MemberVO vo);
	public Integer idCheck(String m_id);
	public void addGosu(GosuVO vo);
	public int getMember(String m_id);
}
