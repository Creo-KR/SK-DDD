package help.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import help.dao.GosuDAO;
import help.dao.RequestDAO;
import help.vo.PageMaker;
import help.vo.RequestVO;

@Controller
public class CategoryController {
	@Autowired
	RequestDAO reqDAO;
	
	@Autowired 
	GosuDAO gosuDAO;

	 @RequestMapping(value = "getCategoryRequest.help", method = RequestMethod.GET)
	   public ModelAndView moveJoin(@RequestParam Integer category, HttpSession session,
			    @RequestParam(required=false) Integer page, ModelAndView mv
			   ) {
		  
		  PageMaker pageMaker = new PageMaker();
	      //List<RequestVO> categoryListValue = new ArrayList<RequestVO>();
	      //categoryListValue.addAll(reqDAO.getAllRequestsByCategory(category));
	      //해당 카테고리에 해당하는 목록 개수 뽑기 for paging 처리
	      int count = 0;
	      HashMap<String, Object> map = new HashMap<>();
	      
	      if(page == null) {
	    	  pageMaker.setPage(0);
	      }else {
		      pageMaker.setPage(page);

	      }
	      int pageResult = pageMaker.getPage();
	      
	      count = reqDAO.countRequest(category);
	      pageMaker.setCount(count);
	      //페이지 계산
	      map.put("c_no", category);
	      map.put("page", pageResult);
	      List<RequestVO> reqList = reqDAO.pageReqList(map);

	      
	      //로그인 되어 있는 해당 아이디의 m_no 의 세션 값을 가져와서 value 에 저장
	      int value = (int) session.getAttribute("UNO");
	      
	      List<Integer> gosuCategoryNum = gosuDAO.getMyAllCategoryNo(value);
	      
	      //고수가 회원가입할때 입력한 카테고리와  현재 페이지이동할 카테고리가 일치할 경우 페이지 이동.
	      for(int i=0;i<gosuCategoryNum.size();i++) {
	    	  if(category==gosuCategoryNum.get(i)) {
	    	      mv.addObject("reqList", reqList);
	    	      mv.addObject("pageMaker", pageMaker);
	    		  mv.addObject("categoryNum",category);
	    		  mv.setViewName("category1List");
	    	      return mv;
	    	  }
	    	  
	    	  
	      }
	      
	      //고수가 회원가입할때 입력한 카테고리가 아닐 경우 메인페이지로 이동되며 권한이 없음을 알림.
	        String authority = "no";
	      return new ModelAndView("index", "authority", authority);

	   }

/*		@RequestMapping(value = "/list", method = RequestMethod.GET) 
		public String list(PageMaker pagemaker, Model model) { 
			logger.info("START LIST"); 
			int count = 0; 
			pagemaker.setPage(pagemaker.getPage()); 
			count = service.count(); 
			// 레코드 총 갯수 구함 
			pagemaker.setCount(count); 
			// 페이지 계산 
			List<BoardVO> list = service.getRead(pagemaker.getPage()); 
			System.out.println("list = " + list.toString()); 
			model.addAttribute("result", list); 
			model.addAttribute("pageMaker", pagemaker); 
			return "/board/list"; 
			}*/ 
}
