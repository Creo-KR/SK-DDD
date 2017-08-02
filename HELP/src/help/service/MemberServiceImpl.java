package help.service;

import org.springframework.stereotype.Service;

import help.dao.MemberDAO;
import help.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	MemberDAO dao;
	
	@Override
	public void addMember(MemberVO vo) {
		dao.addMember(vo);
	}

}
