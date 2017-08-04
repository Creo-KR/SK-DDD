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
public class RequestController {

//	@Autowired
//	MemberService service;
	
	//int ch_m_type;
	
	@RequestMapping("Request.help")
	public String moveJoin() {
		return "pages/Request";
	}
	
//	@RequestMapping(value="addRequest.help", method=RequestMethod.POST)
//	public String addRequest(
//			RequestVO request, Model model) {
//		String phoneNumber = member.getM_tel() + "-" + m_tel2 + "-" + m_tel3;
//		String email = member.getM_email() + "@"  + m_email2;
//		member.setM_tel(phoneNumber);
//		member.setM_email(email);
//		member.setM_type(ch_m_type);
//		member.setM_active(0);
//		service.addMember(member);
//		return "index";
//	}
	
//	@RequestMapping(value="addRequest.help", method=RequestMethod.POST)
//	public String addRequest(requestVO request, ) 
	
	
//	@RequestMapping(value="addMember.help", method=RequestMethod.POST)
//	public String addMember(
//			MemberVO member, Model model, @RequestParam String m_email2,
//			@RequestParam String m_tel2, @RequestParam String m_tel3
//			) {
//		String phoneNumber = member.getM_tel() + "-" + m_tel2 + "-" + m_tel3;
//		String email = member.getM_email() + "@"  + m_email2;
//		member.setM_tel(phoneNumber);
//		member.setM_email(email);
//		member.setM_type(ch_m_type);
//		member.setM_active(0);
//		service.addMember(member);
//		return "index";
//	}
//	

	


}
