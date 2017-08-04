package help.dao;

import help.vo.MemberVO;

public interface LoginDAO {
	
	public int loginCheck(MemberVO vo);

	public MemberVO memberSearch(String id);

}
