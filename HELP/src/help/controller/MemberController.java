package help.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import help.service.MemberService;
import help.vo.MemberVO;

@Controller
public class MemberController {

	MemberService service;
	
	@RequestMapping("joinChoice.do")
	public String moveJoin() {
		return "joinChoice.jsp";
	}
	
	@RequestMapping(value="addMember.do", method=RequestMethod.POST)
	public String addMember(MemberVO member, Model model, @RequestParam String m_type) {
		Integer result = Integer.parseInt(m_type);
		member.setM_type(result);
		member.setM_no(1);
		member.setM_active(0);
		service.addMember(member);
		return "index.jsp";
	}
}
