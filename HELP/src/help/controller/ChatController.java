package help.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import help.service.ChatService;
import help.vo.ChatVO;
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

	@RequestMapping(value = "addChatroom.help", method = RequestMethod.POST)
	public ModelAndView addChatroom(ModelAndView mv, HttpSession session, @RequestParam Integer receiver) {
		if (session.getAttribute("UNO") != null) {
			Integer cr_user1 = (Integer) session.getAttribute("UNO");
		} else {
			System.out.println("비로그인");
			service.addChatroom(new ChatroomVO(0, new MemberVO(1), new MemberVO(receiver), null, 0, 0));
		}
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(value = "viewChatroom.help")
	public ModelAndView viewChatroom(ModelAndView mv, HttpSession session, @RequestParam Integer cr_no) {
		List<ChatVO> list;
		if (session.getAttribute("UNO") != null) {
			Integer cr_user1 = (Integer) session.getAttribute("UNO");
			list = service.getChatByChatroom(new ChatroomVO(cr_no));
		} else {
			System.out.println("비로그인");
			list = service.getChatByChatroom(new ChatroomVO(21));
		}

		mv.addObject("chat_list", list);
		mv.setViewName("commons/chat_room");
		return mv;
	}

	@RequestMapping(value = "sendChat.help", method = RequestMethod.POST)
	public void sendChat(HttpSession session, @RequestParam Integer cr_no, RedirectView rv, HttpServletResponse response) {
		System.out.println(cr_no);
		try {
			response.getWriter().print(cr_no);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
