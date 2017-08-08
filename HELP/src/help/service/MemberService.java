package help.service;

import help.vo.GosuVO;
import help.vo.MemberVO;

public interface MemberService {
	public void addMember(MemberVO vo);
	public int idCheck(String m_id);
	public void addGosu(GosuVO vo);
	public MemberVO getMember(String m_id);
	public int mypageDivision(String m_id);
	public int pwdCheck(MemberVO vo);
	public void updateMember(MemberVO vo);
}
