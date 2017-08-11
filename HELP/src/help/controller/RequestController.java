package help.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import help.dao.GosuDAO;
import help.dao.RequestDAO;
import help.dao.TradeDAO;
import help.vo.ApplyVO;
import help.vo.MemberVO;
import help.vo.PageMaker;
import help.vo.RequestVO;
import help.vo.TradeVO;

@Controller
public class RequestController {
	@Autowired
	RequestDAO reqDAO;

	@Autowired
	GosuDAO gosuDAO;

	@Autowired
	TradeDAO tradeDAO;

	@RequestMapping("request.help")
	public String moveJoin() {
		return "pages/requestForm";
	}

	@RequestMapping("redirectByUtype.help")
	public String redirectByUtype(HttpSession session) {
		Integer memberType = (Integer) session.getAttribute("UTYPE");
		if (memberType == 0)
			return "redirect:/getAllRequestsByWriter.help";
		else
			return "redirect:/getAllRequestsByCategory.help";
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
			question_answer = question_answer + question[i] + answer[i] + "\n";
		}

		requestvo.setR_title(title);
		requestvo.setC_no(Integer.parseInt(categoryType));
		requestvo.setR_content(question_answer);
		requestvo.setR_writer((Integer) session.getAttribute("UNO"));
		if (requestvo != null) {
			int cnt = reqDAO.insertRequest(requestvo);
			if (cnt == 1) {
				return "redirect:/getAllRequestsByWriter.help";
			}
		}
		return "";
	}

	@RequestMapping(value = "/getAllRequestsByWriter.help", method = RequestMethod.GET)
	public String getAllRequestsByWriter(Model model, HttpSession session,
			@RequestParam(required = false) Integer page) {
		Integer r_writer = (Integer) session.getAttribute("UNO");
		List<TradeVO> inProgressTradeValues = null;
		List<TradeVO> completedTradeValues = null;

		List<RequestVO> activeRequestValues = reqDAO.getAllActiveRequestsByWriter(r_writer);
		List<Integer> inactiveRequestValues = reqDAO.getAllInactiveRequestsByWriter(r_writer);
		List<RequestVO> waitingHireValues = reqDAO.getRequestWaitingHire(r_writer);

		for (Integer rno : inactiveRequestValues) {
			inProgressTradeValues = tradeDAO.getInProgressTrade(rno);
			completedTradeValues = tradeDAO.getCompletedTrade(rno);
		}
		
		for(RequestVO vo : waitingHireValues) {
			vo.setApplyCnt(reqDAO.getApplyCount(vo.getR_no()));
		}

		model.addAttribute("waitingListKey", activeRequestValues);
		model.addAttribute("waitingHireListKey", waitingHireValues);
		model.addAttribute("inProgressListKey", inProgressTradeValues);
		model.addAttribute("completedListKey", completedTradeValues);

		return "myRequestList3";
	}

	//	@RequestMapping(value="/getAllRequestsByCategory.help", method=RequestMethod.GET)
	//	public ModelAndView getAllRequestsByCategory(HttpSession session) {
	//		Integer m_no = (Integer) session.getAttribute("UNO");
	//		List<Integer> cnoList = gosuDAO.getMyAllCategoryNo(m_no);
	//		List<RequestVO> requestListValue = new ArrayList<RequestVO>();
	//		
	//		for (Integer cno : cnoList) {
	//			requestListValue.addAll(reqDAO.getAllRequestsByCategory(cno));
	//		}
	//		
	//		return new ModelAndView("gosuRequestList", "requestListKey", requestListValue);
	//	}

	@RequestMapping(value = "/getAllRequestsByCategory.help", method = RequestMethod.GET)
	public String getAllRequestsByCategory(Model model, HttpSession session,
			@RequestParam(required = false) Integer page) {
		Integer g_no = (Integer) session.getAttribute("UNO");

		int count;
		int pageResult;
		PageMaker pageMaker = new PageMaker();
		HashMap<String, Object> map = new HashMap<>();

		if (page == null) {
			pageMaker.setPage(0);
		} else {
			pageMaker.setPage(page);
		}

		pageResult = pageMaker.getPage();
		count = reqDAO.getAllRequestsByCategoryCount(g_no);
		pageMaker.setCount(count);

		map.put("value", g_no);
		map.put("page", pageResult);
		//List<TradeVO> inProgressTradeValues = new ArrayList<TradeVO>();		
		//List<TradeVO> completedTradeValues = new ArrayList<TradeVO>();

		List<RequestVO> activeRequestValues = reqDAO.getAllRequestsByCategory(map);
		//List<Integer> inactiveRequestValues = reqDAO.getAllInactiveRequestsByWriter(r_writer);
		//List<RequestVO> waitingHireValues = reqDAO.getRequestWaitingHire(r_writer);

		/*		for (Integer rno : inactiveRequestValues) {
					inProgressTradeValues.addAll(tradeDAO.getInProgressTrade(rno));
					completedTradeValues.addAll(tradeDAO.getCompletedTrade(rno));
				}*/
		model.addAttribute("pageMaker1", pageMaker);
		model.addAttribute("waitingListKey", activeRequestValues);
		//model.addAttribute("waitingHireListKey", waitingHireValues);
		//model.addAttribute("inProgressListKey", inProgressTradeValues);
		//model.addAttribute("completedListKey", completedTradeValues);

		return "myRequestList4";
	}

	@RequestMapping(value = "/getRequestDetail.help", method = RequestMethod.GET)
	public String getRequestDetail(@RequestParam Integer flag, @RequestParam Integer r_no, Model model) {
		RequestVO vo = reqDAO.getRequestDetail(r_no);
		List<MemberVO> list = reqDAO.getApplyMember(r_no);
		model.addAttribute("flag", flag);
		model.addAttribute("requestDetailKey", vo);
		model.addAttribute("apply", list);
		//model.addAttribute("requestDetailKey",vo);

		return "requestDetail";
	}

	   @RequestMapping(value="/hireGosu.help", method=RequestMethod.GET)
	   public String hireGosu(@RequestParam Integer r_no, @RequestParam Integer g_no, HttpSession session ) {
		   TradeVO tradevo = new TradeVO();
		   // 고수번호 임의값 2
		   session.getAttribute("UNO");
		   
		   tradevo.setT_requester((int)session.getAttribute("UNO")); //요청자
		   tradevo.setT_respondent(g_no); //고수
		   tradevo.setReq(new RequestVO(r_no)); //요청 번호
		   
		   
		   System.out.println("uno>>"+session.getAttribute("UNO"));
		   System.out.println("g_no>>"+g_no);
		   System.out.println("r_no>>"+r_no);
		   
		   
		   
		   tradeDAO.addTrade(tradevo);
		   reqDAO.updateRequestForInactive(r_no);  
	       return "";
	   }
	   
	@RequestMapping(value = "/applyForRequest.help", method = RequestMethod.GET)
	public ModelAndView applyForRequest(HttpServletRequest req, ModelAndView mv, RedirectView rv) {

		Integer r_no = Integer.parseInt(req.getParameter("rno"));
		RequestVO request = reqDAO.getRequestDetail(r_no);
		ApplyVO vo = new ApplyVO(request.getR_no(), request.getR_writer(),
				(Integer) req.getSession().getAttribute("UNO"));

		try {
			reqDAO.insertApply(vo);

			rv.setUrl("redirectByUtype.help");
			mv.setView(rv);
		} catch (Exception e) {
			mv.addObject("exist", "exist");
			mv.addObject("flag", 0);
			mv.addObject("requestDetailKey", request);
			mv.setViewName("requestDetail");
		}

		return mv;
	}

	@RequestMapping(value = "/completeRequest.help", method = RequestMethod.GET)
	public String completeRequest(@RequestParam Integer r_no) {
		tradeDAO.updateTradeToBeCompleted(r_no);
		return "redirect:/getAllRequestsByWriter.help";
	}
}
