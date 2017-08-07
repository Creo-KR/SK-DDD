package help.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@RequestMapping(value = "/addRequest.help", method = RequestMethod.POST)
	public String addRequest(@ModelAttribute RequestVO req) {
		if (req != null) {
			int cnt = reqDAO.insertRequest(req);
			if (cnt == 1)
				return "redirect:/getAllRequestsByWriter.help?r_writer=27";
		}
		return "";
	}
	
	@RequestMapping(value="/getAllRequestsByWriter.help", method=RequestMethod.GET)
	public ModelAndView getAllRequestsByWriter(@RequestParam Integer r_writer) {
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
		System.out.println(requestListValue);
		
		return new ModelAndView("gosuRequestList", "requestListKey", requestListValue);
	}
	
	@RequestMapping(value="/getRequestDetail.help", method=RequestMethod.GET)
	public ModelAndView getRequestDetail(@RequestParam Integer r_no) {
		RequestVO vo = reqDAO.getRequestDetail(r_no);
		return new ModelAndView("requestDetail", "requestDetailKey", vo);
	}
}

