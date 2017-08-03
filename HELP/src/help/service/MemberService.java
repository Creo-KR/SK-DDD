package help.service;

import help.vo.GosuVO;
import help.vo.MemberVO;

public interface MemberService {
	public void addMember(MemberVO vo);
	public int idCheck(String m_id);
	public void addGosu(GosuVO vo);
}
