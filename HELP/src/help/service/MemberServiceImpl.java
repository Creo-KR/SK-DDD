package help.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import help.dao.MemberDAO;
import help.vo.GosuVO;
import help.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	
	@Override
	public void addMember(MemberVO vo) {
		dao.addMember(vo);
	}

	@Override
	public int idCheck(String m_id) {
		return dao.idCheck(m_id);
	}

	@Override
	public void addGosu(GosuVO vo) {
		dao.addGosu(vo);
	}

	@Override
	public int getMember(String m_id) {
		return dao.getMember(m_id);
	}





}