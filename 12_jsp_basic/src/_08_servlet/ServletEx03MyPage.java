package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servletEx03MyPage")
public class ServletEx03MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 세션값 가져오기
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		/*
		 	
			세션을 이용하여 관련 정보를 DB에서 가져오는 비즈니스 로직
		 	
			request.setAttribute("DB에서 가져온 정보", DB에서 가져온 정보);
		 	
		*/
		
		request.setAttribute("pageTitle", "마이페이지");
		request.setAttribute("name", "익명유저1");
		request.setAttribute("contact", "010-1234-5678");
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/servletEx03MyPage.jsp");
		dis.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
