package help.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import help.service.MemberService;
import help.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	int ch_m_type;
	
	@RequestMapping("joinChoice.help")
	public String moveJoin() {
		return "pages/joinChoice";
	}
	
	@RequestMapping(value="join.help", method=RequestMethod.GET)
	public String join(Model model, @RequestParam String m_type) {
		System.out.println(service);
		System.out.println(m_type);
		ch_m_type = Integer.parseInt(m_type);
		//model.addAttribute("m_type", ch_m_type);
		return "pages/join";
	}
	@RequestMapping(value="addMember.help", method=RequestMethod.POST)
	public String addMember(
			MemberVO member, Model model, @RequestParam String m_email2,
			@RequestParam String m_tel2, @RequestParam String m_tel3
			) {
		String phoneNumber = member.getM_tel() + "-" + m_tel2 + "-" + m_tel3;
		String email = member.getM_email() + "@"  + m_email2;
		member.setM_tel(phoneNumber);
		member.setM_email(email);
		member.setM_type(ch_m_type);
		member.setM_active(0);
		service.addMember(member);
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value="idCheckAction.help", method=RequestMethod.POST)
	public Integer idCheck(@RequestParam String m_id){
		System.out.println("들어옴?");
		System.out.println(m_id);
		int result = service.idCheck(m_id);
		System.out.println(result);
		return result;
	}
}
