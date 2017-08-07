package help.controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CategoryController {

	@RequestMapping("category1Choice.help")
	public String moveJoin() {
		return "pages/category1List";
	}


	


}
