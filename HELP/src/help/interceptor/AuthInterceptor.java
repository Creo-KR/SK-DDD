package help.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		if (session.getAttribute("UNO") == null) {
			saveDest(request);
			out.println("<script>");
			out.println("alert('로그인이 필요한 페이지입니다.');");
			out.println("location.href='loginForm.help';");
			out.println("</script>");
			out.close();
			return false;
		}
		
		return true;
	}

	private void saveDest(HttpServletRequest request) {
		String uri = request.getRequestURI();
		String query = request.getQueryString();

		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}

		if (request.getMethod().equals("GET")) {
			request.getSession().setAttribute("dest", uri + query);
		}
	}

}
