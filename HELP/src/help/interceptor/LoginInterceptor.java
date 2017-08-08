package help.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		if (session.getAttribute("UNO") != null) {
			String dest = (String) session.getAttribute("dest");
			request.getSession().setAttribute("dest", request.getContextPath()+"/");
			out.println("<script>");
			out.println("location.href='"+dest+"';");
			out.println("</script>");
			out.close();
		} else {
			out.println("<script>");
			out.println("alert('아이디와 비밀번호를 확인해주세요.');");
			out.println("location.href='loginForm.help';");
			out.println("</script>");
			out.close();
		}
	}
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		return true;
	}
	
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
	
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	}

}
