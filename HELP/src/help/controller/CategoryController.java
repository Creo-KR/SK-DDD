package help.controller;

import java.util.ArrayList;
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
import help.vo.RequestVO;

@Controller
public class CategoryController {
	@Autowired
	RequestDAO reqDAO;
	
	@Autowired 
	GosuDAO gosuDAO;

	 @RequestMapping(value = "getCategoryRequest.help", method = RequestMethod.GET)
	   public ModelAndView moveJoin(@RequestParam Integer category, Model model, HttpSession session) {
	      List<RequestVO> categoryListValue = new ArrayList<RequestVO>();
	      categoryListValue.addAll(reqDAO.getAllRequestsByCategory(category));
	      
	      //로그인 되어 있는 해당 아이디의 m_no 의 세션 값을 가져와서 value 에 저장
	      int value = (int) session.getAttribute("UNO");
	      
	      List<Integer> gosuCategoryNum = gosuDAO.getMyAllCategoryNo(value);
	      
	      //고수가 회원가입할때 입력한 카테고리와  현재 페이지이동할 카테고리가 일치할 경우 페이지 이동.
	      for(int i=0;i<gosuCategoryNum.size();i++) {
	    	  if(category==gosuCategoryNum.get(i)) {
	    		  model.addAttribute("categoryNum",category);
	    	      return new ModelAndView("category1List", "categoryListKey", categoryListValue);
	    	  }
	    	  
	    	  
	      }
	      
	      //고수가 회원가입할때 입력한 카테고리가 아닐 경우 메인페이지로 이동되며 권한이 없음을 알림.
	        String authority = "no";
	      return new ModelAndView("index", "authority", authority);

	   }

}
