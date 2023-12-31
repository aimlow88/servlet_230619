package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
		
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>(){
		{
			put("id", "aimlow");
			put("password", "qwer1234!");
			put("name", "홍길동");
		}
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String pwd = request.getParameter("pwd");
		
		out.print("<html><head><title>사용자 정보 확인</title></head><body>");
		
		if (!userId.equals(userMap.get("id"))) {
			out.println("id가 일치하지 않습니다.");
		} else if (!pwd.equals(userMap.get("password"))) {
			out.println("password가 일치하지 않습니다.");			
		} else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		
		out.print("</body></html>");
	};
}
