package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servletEx03")
public class ServletEx03 extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/servletEx03.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(); 			// 세션 생성 방법
		session.setAttribute("id", request.getParameter("id"));	// 세션등록방법은 스크립트릿과 같다.
		session.setAttribute("role", "admin");
		session.setAttribute("isMobile", false);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/servletEx03Action.jsp");
		dis.forward(request, response);
		
	}

}
