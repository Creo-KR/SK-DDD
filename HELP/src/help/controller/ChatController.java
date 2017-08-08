package help.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import help.service.ChatService;
import help.service.MemberService;
import help.vo.ChatVO;
import help.vo.ChatroomVO;
import help.vo.MemberVO;

@Controller
public class ChatController {

	@Autowired
	ChatService service;

	@Autowired
	MemberService member;

	@RequestMapping("chatroomList.help")
	public ModelAndView getChatroomListByUser(ModelAndView mv, HttpSession session) {
		List<ChatroomVO> list = null;
		Integer cr_user1 = (Integer) session.getAttribute("UNO");
		if (cr_user1 != null) {
			list = service.getChatroomListByUser(new ChatroomVO(0, new MemberVO(cr_user1), null, null, 0, 0));
		}
		mv.addObject("chatroom_list", list);
		mv.setViewName("commons/chat_list");
		return mv;
	}

	@RequestMapping(value = "addChatroom.help", method = RequestMethod.POST)
	public ModelAndView addChatroom(ModelAndView mv, HttpSession session, @RequestParam Integer receiver) {
		Integer cr_user1 = (Integer) session.getAttribute("UNO");
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(value = "viewChatroom.help")
	public ModelAndView viewChatroom(ModelAndView mv, HttpSession session, HttpServletResponse response,
			@RequestParam Integer cr_no, @RequestParam Integer cr_receiver) {
		if (cr_no != null) {
			session.setAttribute("ss_cr_no", cr_no);
			session.setAttribute("ss_cr_receiver", member.getMemberByNo(cr_receiver));
			List<ChatVO> list = null;
			list = service.getChatByChatroom(new ChatroomVO(cr_no));
			mv.addObject("chat_list", list);
			mv.setViewName("commons/chat_room");
		} else {
			mv.setViewName("commons/blank");
		}
		return mv;
	}

	@RequestMapping(value = "sendChat.help", method = RequestMethod.POST)
	public void sendChat(HttpSession session, @RequestParam String text, RedirectView rv,
			HttpServletResponse response) {
		Integer cr_no = (Integer) session.getAttribute("ss_cr_no");
		Integer ch_sender = (Integer) session.getAttribute("UNO");
		MemberVO ch_receiver = (MemberVO) session.getAttribute("ss_cr_receiver");

		service.sendChat(new ChatVO(0, new MemberVO(ch_sender), ch_receiver, null, text, 0, new ChatroomVO(cr_no)));

		try {
			response.getWriter().print(text);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "joinChatroom.help", method = RequestMethod.POST)
	public void joinChatroom() {

	}

	@RequestMapping("chatRefreshCount.help")
	@ResponseBody
	public int chatRefreshCount(HttpServletRequest req) {
		if (req.getParameter("UNO") != null) {
			return service.chatRefreshCount(Integer.parseInt(req.getParameter("UNO")));
		}
		return 0;
	}

	@RequestMapping(value = "checkChat.help", method = RequestMethod.POST)
	public void checkChat(HttpSession session, @RequestParam Integer ch_no, HttpServletResponse response) {
		service.checkChat(new ChatVO(ch_no));
		try {
			response.getWriter().print(1);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@RequestMapping("chatroomRefresh.help")
	@ResponseBody
	public int chatRoomRefresh(HttpServletRequest req) {
		if (req.getParameter("UNO") != null) {
			return service.chatroomRefresh(new ChatVO(0, null, new MemberVO(Integer.parseInt(req.getParameter("UNO"))),
					null, null, 0, new ChatroomVO(Integer.parseInt(req.getParameter("cr_no")))));
		}
		return 0;
	}

}
