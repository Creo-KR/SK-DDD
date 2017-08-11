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
import help.dao.TradeDAO;
import help.service.MemberService;
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
		System.out.println(">>memberType : " + memberType);
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
	   
	@RequestMapping(value="/getAllRequestsByWriter.help", method=RequestMethod.GET)
	public String getAllRequestsByWriter(Model model, HttpSession session) {
		Integer r_writer = (Integer) session.getAttribute("UNO");
		List<TradeVO> inProgressTradeValues = new ArrayList<TradeVO>();		
		List<TradeVO> completedTradeValues = new ArrayList<TradeVO>();
		
		List<RequestVO> activeRequestValues = reqDAO.getAllActiveRequestsByWriter(r_writer);
		List<Integer> inactiveRequestValues = reqDAO.getAllInactiveRequestsByWriter(r_writer);
		List<RequestVO> waitingHireValues = reqDAO.getRequestWaitingHire(r_writer);
		
		for (Integer rno : inactiveRequestValues) {
			inProgressTradeValues.addAll(tradeDAO.getInProgressTrade(rno));
			completedTradeValues.addAll(tradeDAO.getCompletedTrade(rno));
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
	
	@RequestMapping(value="/getAllRequestsByCategory.help", method=RequestMethod.GET)
	public String getAllRequestsByCategory(Model model, HttpSession session) {
		Integer m_no = (Integer) session.getAttribute("UNO");
		
		List<Integer> cnoList = gosuDAO.getMyAllCategoryNo(m_no);
		List<RequestVO> waitingListValue = new ArrayList<RequestVO>();
		
		for (Integer cno : cnoList) {
			waitingListValue.addAll(reqDAO.getAllRequestsByCategory(cno));
		}
		
		List<TradeVO> inProgressTradeValues = new ArrayList<TradeVO>();		
		List<TradeVO> completedTradeValues = new ArrayList<TradeVO>();

		inProgressTradeValues.addAll(tradeDAO.getInProgressTradeByGosu(m_no));
		completedTradeValues.addAll(tradeDAO.getCompletedTradeByGosu(m_no));
		
		model.addAttribute("waitingListKey", waitingListValue);
		model.addAttribute("inProgressListKey", inProgressTradeValues);
		model.addAttribute("completedListKey", completedTradeValues);
		
		return "myRequestList4";
	}
	
	@RequestMapping(value="/getRequestDetail.help", method=RequestMethod.GET)
	public String getRequestDetail(@RequestParam Integer flag, @RequestParam Integer r_no, Model model) {
		RequestVO vo = reqDAO.getRequestDetail(r_no);
		
		model.addAttribute("flag",flag);
		model.addAttribute("requestDetailKey", vo);
		System.out.println();
		model.addAttribute("requestDetailKey",vo);
		
		return "requestDetail";
	}
	
	@RequestMapping(value="/applyForRequest.help", method=RequestMethod.GET)
	public String applyForRequest(@RequestParam Integer r_no) {
		
		return "myRequestList3";
	}
	
//	@RequestMapping(value="/hireGosu.help", method=RequestMethod.GET)
//	public String hireGosu() {
//		
//	}
//	
//	@RequestMapping(value="/completeRequest.help", method=RequestMethod.GET)
//	public String completeRequest() {
//		
//	}

	   @RequestMapping(value="/hireGosu.help", method=RequestMethod.GET)
	   public String hireGosu() {
		   TradeVO tradevo = new TradeVO();
//		   tradevo.setT_no(t_no); //트레이드 번호
//		   tradevo.setT_requester(t_requester);
//		   tradevo.setT_respondent(t_respondent);
//		   tradevo.setT_enddate(t_enddate);
//		   tradevo.setReq(req);
		   
	      return "";
	   }
//	   
//	   @RequestMapping(value="/completeRequest.help", method=RequestMethod.GET)
//	   public String completeRequest() {
//	      
//	   }

}

