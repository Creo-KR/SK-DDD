package help.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

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
			@RequestParam String m_tel2, @RequestParam String m_tel3, @RequestParam(value="c_no", required=true) List<String> c_no
			) {
		String phoneNumber = member.getM_tel() + "-" + m_tel2 + "-" + m_tel3;
		String email = member.getM_email() + "@"  + m_email2;
		member.setM_tel(phoneNumber);
		member.setM_email(email);
		member.setM_type(ch_m_type);
		member.setM_active(0);
		if(ch_m_type == 1) {
			service.addMember(member);
			
			MemberVO memberResult = service.getMember(member.getM_id());
			for(String i : c_no) {
				System.out.println(i);
				
				CategoryVO c = new CategoryVO(Integer.parseInt(i));
				GosuVO g = new GosuVO(memberResult , c);
				service.addGosu(g);
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

	
	//마이페이지 일반회원인지 고수인지 구분
	@RequestMapping(value="mypageDivision.help", method=RequestMethod.GET)
	public String mypageDivision(HttpSession session) {
		String m_id = (String) session.getAttribute("UID");
		int m_type = service.mypageDivision(m_id);
		if(m_type == 0) {
			return "pages/mypage";
		} else {
			return "pages/mypageGosu";
		}
	}
	
	@RequestMapping("pwdCheck.help")
	public String pwdCheck() {
		return "pages/pwdCheck";
	}
	
	//개인 정보 수정하기 위해 비밀번호 입력하여 DB 체크하는 Controller
	@RequestMapping(value="updateMypage.help", method=RequestMethod.POST)
	public String updateMypage(MemberVO vo, HttpSession session, Model model) {
		PrintWriter out = null;
		vo.setM_id((String) session.getAttribute("UID"));
		int count = service.pwdCheck(vo);
		MemberVO member = service.getMember(vo.getM_id());
		if(count >= 1) {
			if(service.mypageDivision(vo.getM_id()) == 0) {
				
				model.addAttribute("member", member);
				return "pages/updateMypageNormal";
			}else {
				model.addAttribute("member", member);
				return "pages/updateMypageGosu";
			}
		} else {
			//DB 정보와 일치 하지 않는 경우 제자리로 돌아옴.
			return "pages/pwdCheck";
		}
		
	}
	
	//일반과 고수 업데이트 register controller
	@RequestMapping(value="updateMypageReg.help", method=RequestMethod.POST)
	public String updateMypageReg(MemberVO vo, HttpSession session, @RequestParam String m_tel2, @RequestParam String m_tel3
			,@RequestParam String m_email2, @RequestParam(required=false) List<String> c_no) 
	{
		String phoneNumber = vo.getM_tel() + "-" + m_tel2 + "-" + m_tel3;
		String email = vo.getM_email() + "@"  + m_email2;
		vo.setM_id((String) session.getAttribute("UID"));
		vo.setM_tel(phoneNumber);
		vo.setM_email(email);
		MemberVO member = service.getMember(vo.getM_id());
		if(member.getM_type() == 0) {
			vo.setM_intro("");
			service.updateMember(vo);
			return "pages/mypage";
		} else {
			service.updateMember(vo);
			
			GosuVO g = new GosuVO(member , null);
			service.deleteGosu(g);
			
			for(String i : c_no) {
				CategoryVO c = new CategoryVO(Integer.parseInt(i));
				g.setC_no(c);
				
				service.addGosu(g);
			}
			return "pages/mypage";
		}
	}
}
