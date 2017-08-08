package help.dao;

import help.vo.GosuVO;
import help.vo.MemberVO;

public interface MemberDAO {

	public void addMember(MemberVO vo);
	public Integer idCheck(String m_id);
	public void addGosu(GosuVO vo);
	public MemberVO getMember(String m_id);
	public MemberVO getMemberByNo(Integer m_no);
	public int mypageDivision(String m_id);
	public int pwdCheck(MemberVO vo);
	public void updateMember(MemberVO vo);
	public void deleteGosu(GosuVO vo);
}
