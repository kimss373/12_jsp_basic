package _08_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servletEx04")
public class ServletEx04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 반환되는 데이터의 encoding 지정
		response.setContentType("text/html; charset=UTF-8");
		
		// PrintWriter 클래스의 print()메서드로 새로운 html을 표시한다.
		// Springframework의 @ResponseBody , ResponseEntity , @RestController와 같은 기능을 한다.
		PrintWriter pw = response.getWriter();
//		pw.print("<h1>servletEx04</h1>");
//		pw.print("<a href='servletEx01'>Ex01로 이동하기</a><br>");
//		pw.print("<a href='servletEx02'>Ex02로 이동하기</a><br>");
//		pw.print("<a href='servletEx03'>Ex03로 이동하기</a><br>");
		
		String jsScript = "<script>";
			   jsScript += "alert('Ex01로 이동');";
			   jsScript += "location.href='servletEx01';";
			   jsScript += "</script>";
			   
		pw.print(jsScript);
		
	}

}
