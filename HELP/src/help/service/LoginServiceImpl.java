package help.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import help.dao.LoginDAO;
import help.vo.MemberVO;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginDAO dao;
	
	@Override
	public int loginCheck(MemberVO vo) {
		return dao.loginCheck(vo);
	}

}
