package help.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import help.dao.GosuDAO;
import help.dao.RequestDAO;
import help.service.MemberService;
import help.vo.MemberVO;
import help.vo.RequestVO;

@Controller
public class RequestController {
	@Autowired
	RequestDAO reqDAO;
	
	@Autowired
	GosuDAO gosuDAO;
	
	@RequestMapping("request.help")
	public String moveJoin() {
		return "pages/requestForm";
	}

	@RequestMapping(value = "addRequest.help", method = RequestMethod.POST)
	public String addRequest(HttpSession session, ServletRequest request) {
		RequestVO requestvo = new RequestVO();

		String categoryType = request.getParameter("categoryType");
		String title = request.getParameter("title");
		String[] question = request.getParameterValues("question");
		String[] answer = request.getParameterValues("answer");
		String question_answer = "";


		for (int i = 0; i < question.length; i++) {
			question_answer = question_answer + question[i] + "@!@"+ answer[i] + "@!@";
		}
		// System.out.println(question_answer);

		requestvo.setR_title(title);
		requestvo.setC_no(Integer.parseInt(categoryType));
		requestvo.setR_content(question_answer);
		requestvo.setR_writer((Integer) session.getAttribute("UNO"));
		if (requestvo != null) {
			int cnt = reqDAO.insertRequest(requestvo);
			if (cnt == 1) {
				return "redirect:/getAllRequestsByWriter.help?r_writer=27";
			}
		}
		return "";

	}

	/*
	   @RequestMapping(value = "/addRequest.help", method = RequestMethod.POST)
	   public String addRequest(@ModelAttribute RequestVO req) {
	      if (req != null) {
	         int cnt = reqDAO.insertRequest(req);
	         if (cnt == 1)
	            return "redirect:/getAllRequestsByWriter.help?r_writer=27";
	      }
	      return "";
	   }*/
	   
	
	@RequestMapping(value="/getAllRequestsByWriter.help", method=RequestMethod.GET)
	public ModelAndView getAllRequestsByWriter(HttpSession session) {
		Integer r_writer = (Integer) session.getAttribute("UNO");
		
		//★★★★ getRequestsByWriter의 파라미터인 r_writer에 값 고정되어 있음. 1은 임의의 r_writer임 
		List<RequestVO> activeRequestValues = reqDAO.getAllActiveRequestsByWriter(r_writer);
		List<RequestVO> inactiveRequestValues = reqDAO.getAllInactiveRequestsByWriter(r_writer);
		
		Map<String, List<RequestVO>> map = new HashMap<>();
		map.put("active", activeRequestValues);
		map.put("inactive", inactiveRequestValues);
		
		return new ModelAndView("myRequestList", "requestKey", map);
	}
	
//	@RequestMapping(value="/getAllRequestByCategory.do", method=RequestMethod.GET)
//	public void getAllRequestByCategory(@RequestParam Integer m_no) {
//		System.out.println(">>m_no : " + m_no);
//		List<Integer> cnoList = gosuDAO.getMyAllCategoryNo(m_no);
//		
//		for (Integer cno : cnoList) {
//			System.out.println(">>cno : " + cno);
//		}
//		
//		//return "";
//	}
	
	@RequestMapping(value="/getAllRequestsByCategory.help", method=RequestMethod.GET)
	public ModelAndView getAllRequestsByCategory(@RequestParam Integer m_no) {
		List<Integer> cnoList = gosuDAO.getMyAllCategoryNo(m_no);
		//List<RequestVO> requestListValue = null;	//바보가 null로 초기화해놓고 addAll하니까 nullPointExceptions 난거잖아... 
		List<RequestVO> requestListValue = new ArrayList<RequestVO>();
		
		for (Integer cno : cnoList) {
			requestListValue.addAll(reqDAO.getAllRequestsByCategory(cno));
			
		}
		
		return new ModelAndView("gosuRequestList", "requestListKey", requestListValue);
	}
	
	
	
	@RequestMapping(value="/getRequestDetail.help", method=RequestMethod.GET)
	public ModelAndView getRequestDetail(Model model, @RequestParam Integer r_no, HttpSession session) {
		RequestVO vo = reqDAO.getRequestDetail(r_no);
		String content = vo.getR_content();
		
		String contentSplit[] = content.split("@!@");
		
		//System.out.println(content);
		
//		for(int i=0; i<contentSplit.length; i++) {
//			System.out.println("contentSplit["+"] >>" + contentSplit[i]);
//		}
//		

		
		model.addAttribute("contentSplit",contentSplit);
		model.addAttribute("sessionType",session.getAttribute("UTYPE"));
		
		
		
		return new ModelAndView("requestDetail", "requestDetailKey", vo);
	}
}

