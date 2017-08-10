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
import help.vo.GosuVO;
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
		
		System.out.println(gosuDAO.getMyAllCategoryNo(value));
		
			model.addAttribute("categoryNum",category);
		return new ModelAndView("category1List", "categoryListKey", categoryListValue);

	}

}
