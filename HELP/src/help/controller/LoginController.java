package help.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import help.service.LoginService;
import help.vo.MemberVO;

@Controller
public class LoginController {

	@Autowired
	LoginService service;

	// 로그인폼 요청
	@RequestMapping("loginForm.help")
	public String loginForm() {
		return "pages/loginForm";
	}

	// 로그인체크
	@RequestMapping("loginProc.help")
	public ModelAndView loginProc(ModelAndView mv, @ModelAttribute MemberVO vo, HttpSession session) {
		int cnt = service.loginCheck(vo);
		if (cnt == 1) {
			MemberVO memVO = service.memberSearch(vo.getM_id());
			session.setAttribute("UNO", memVO.getM_no());
			session.setAttribute("UID", memVO.getM_id());
			session.setAttribute("COUNT", cnt);
			session.setAttribute("UNAME", vo.getM_id());
			mv.setViewName("index");
			//rv.setUrl("loginForm.help");
			//mv.setView(rv);
		}
		mv.setViewName("index");
		return mv;
	}

	// 로그아웃
	@RequestMapping("logout.help")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		if (session.getAttribute("UNAME") != null) {
			session.removeAttribute("UNAME");
			session.removeAttribute("COUNT");
			mv.setViewName("index");
		}
		return mv;
	}
}
