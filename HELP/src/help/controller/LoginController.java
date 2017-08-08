package help.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import help.service.LoginService;
import help.vo.MemberVO;

@Controller
public class LoginController {

	@Autowired
	LoginService service;

	// 로그인폼 요청
	@RequestMapping(value = "loginForm.help", method = RequestMethod.GET)
	public ModelAndView loginForm(ModelAndView mv, HttpServletRequest req, HttpSession session) {
		String check = req.getParameter("CHECK");
		if (session.getAttribute("UNO") != null) {
			mv.setViewName("index");
		} else {
			mv.addObject("CHECK", check);
			mv.setViewName("pages/loginForm");
		}
		return mv;
	}

	// 로그인체크
	@RequestMapping("loginProc.help")
	public ModelAndView loginProc(ModelAndView mv, @ModelAttribute MemberVO vo, HttpSession session) {
		int cnt = service.loginCheck(vo);
		if (cnt == 1) {
			MemberVO memVO = service.memberSearch(vo.getM_id());
			session.setAttribute("UNO", memVO.getM_no());
			session.setAttribute("UID", memVO.getM_id());
			session.setAttribute("UNAME", memVO.getM_name());
			session.setAttribute("COUNT", cnt);
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
			session.removeAttribute("UNO");
			session.removeAttribute("UID");
			session.removeAttribute("UNAME");
			session.removeAttribute("COUNT");
			mv.setViewName("index");
		} else {
			mv.setViewName("index");
		}
		return mv;
	}
}
