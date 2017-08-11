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

import help.dao.GosuDAO;
import help.dao.RequestDAO;
import help.dao.TradeDAO;
import help.vo.ApplyVO;
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
	   
	@RequestMapping(value="/getAllRequestsByWriter.help", method=RequestMethod.GET)
	public String getAllRequestsByWriter(Model model, HttpSession session, 
			@RequestParam(required=false) Integer page) {
		int count;
		int pageResult;
		PageMaker pageMaker = new PageMaker();
		HashMap<String, Object> map = new HashMap<>();
		Integer r_writer = (Integer) session.getAttribute("UNO");
		
		if(page == null) {
			pageMaker.setPage(0);
		} else {
			pageMaker.setPage(page);
		}
		
		pageResult = pageMaker.getPage();
		count = reqDAO.getAllActiveRequestsByWriterCount(r_writer);
		pageMaker.setCount(count);
		
		map.put("value", r_writer);
		map.put("page", page);
		//List<TradeVO> inProgressTradeValues = new ArrayList<TradeVO>();		
		//List<TradeVO> completedTradeValues = new ArrayList<TradeVO>();
		
		List<RequestVO> activeRequestValues = reqDAO.getAllActiveRequestsByWriter(map);
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
		
		// List<Integer> cnoList = gosuDAO.getMyAllCategoryNo(m_no);
		/*List<RequestVO> waitingListValue = new ArrayList<RequestVO>();*/
		
		/*for (Integer cno : cnoList) {
			waitingListValue.addAll(reqDAO.getAllRequestsByCategory(cno));
		}*/
		
		List<RequestVO> waitingListValue = reqDAO.getAllRequestsByCategory(m_no);
		
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
		//model.addAttribute("requestDetailKey",vo);

		return "requestDetail";
	}
	
	  @RequestMapping(value="/applyForRequest.help", method=RequestMethod.GET)
	   public String applyForRequest(HttpServletRequest req) {
		  ApplyVO vo = new ApplyVO();
		  vo.setR_no(Integer.parseInt(req.getParameter("rno")));
		  vo.setM_no(Integer.parseInt(req.getParameter("mno")));
		  vo.setG_no(Integer.parseInt(req.getParameter("gno")));
		  reqDAO.insertApply(vo);
		  return "redirect:/redirectByUtype.help";
	   }

	   @RequestMapping(value="/hireGosu.help", method=RequestMethod.GET)
	   public String hireGosu(@RequestParam Integer r_no, HttpSession session ) {
		   TradeVO tradevo = new TradeVO();
		   
		   
		   
		   // 고수번호 임의값 2
		   
		   session.getAttribute("UNO");
		   
		   tradevo.setT_requester((int)session.getAttribute("UNO")); //요청자
		   tradevo.setT_respondent(38); //고수
		  // tradevo.setT_enddate(t_enddate);
		   tradevo.setReq(new RequestVO(r_no));; //요청 번호
		   tradeDAO.addTrade(tradevo);
		   
		   
		   
	      return "";
	   }
	   
		@RequestMapping(value="/completeRequest.help", method=RequestMethod.GET)
		public String completeRequest(@RequestParam Integer r_no) {
			tradeDAO.updateTradeToBeCompleted(r_no);
			return "redirect:/getRequestDetail.help?r_no=" + r_no + "&flag=0";
		}
}

