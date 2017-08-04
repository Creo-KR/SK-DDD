package help.service;

import help.vo.MemberVO;

public interface LoginService {

	public int loginCheck(MemberVO vo);

	public MemberVO memberSearch(String id);

}
