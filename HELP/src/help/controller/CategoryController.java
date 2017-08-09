package help.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import help.dao.RequestDAO;
import help.vo.RequestVO;

@Controller
public class CategoryController {
	@Autowired
	RequestDAO reqDAO;

	@RequestMapping(value = "getCategoryRequest.help", method = RequestMethod.GET)
	public ModelAndView moveJoin(@RequestParam Integer category,Model model) {
		List<RequestVO> categoryListValue = new ArrayList<RequestVO>();
		categoryListValue.addAll(reqDAO.getAllRequestsByCategory(category));
		
		
			model.addAttribute("categoryNum",category);
		return new ModelAndView("category1List", "categoryListKey", categoryListValue);

	}

}
