package help.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import help.service.ChatService;
import help.vo.ChatroomVO;
import help.vo.MemberVO;

@Controller
public class ChatController {

	@Autowired
	ChatService service;

	@RequestMapping("chatroomList.help")
	public ModelAndView getChatroomListByUser(ModelAndView mv, HttpSession session) {
		List<ChatroomVO> list;
		if (session.getAttribute("UNO") != null) {
			Integer cr_user1 = (Integer) session.getAttribute("UNO");
			list = service.getChatroomListByUser(new ChatroomVO(0, new MemberVO(cr_user1), null, null, 0, 0));
		} else {
			System.out.println("비로그인");
			list = service.getChatroomListByUser(new ChatroomVO(0, new MemberVO(1), null, null, 0, 0));
		}

		mv.addObject("chatroom_list", list);
		mv.setViewName("commons/chat_list");
		return mv;
	}

}
