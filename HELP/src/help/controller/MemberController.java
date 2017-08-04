package help.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import help.service.MemberService;
import help.vo.CategoryVO;
import help.vo.GosuVO;
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
		ch_m_type = Integer.parseInt(m_type);
		if(ch_m_type == 0) {
			return "pages/join";
		} else {
			return "pages/joinGosu";
		}
		//model.addAttribute("m_type", ch_m_type);
		
	}
	
	
	@RequestMapping(value="addMember.help", method=RequestMethod.POST)
	public String addMember(
			MemberVO member, Model model, @RequestParam String m_email2,
			@RequestParam String m_tel2, @RequestParam String m_tel3, @RequestParam(value="c_no", required=true) List<String> c_no,
			@RequestParam String g_intro
			) {
		System.out.println("come?");
		String phoneNumber = member.getM_tel() + "-" + m_tel2 + "-" + m_tel3;
		String email = member.getM_email() + "@"  + m_email2;
		member.setM_tel(phoneNumber);
		member.setM_email(email);
		member.setM_type(ch_m_type);
		member.setM_active(0);
		if(ch_m_type == 1) {
			service.addMember(member);
			
			int g_no = service.getMember(member.getM_id());
			for(String i : c_no) {
				System.out.println(i);
				
				CategoryVO c = new CategoryVO(Integer.parseInt(i));
				GosuVO g = new GosuVO(g_no, g_intro, c);
				service.addGosu(g);
				System.out.println("오니");
			}
		} else {
			service.addMember(member);
		}
		return "index";
	}
	
	
	@RequestMapping(value="idCheckAction.help", method=RequestMethod.POST)
	@ResponseBody
	public Integer idCheck(@RequestParam String m_id){
		int result = service.idCheck(m_id);
		return result;
	}
}
