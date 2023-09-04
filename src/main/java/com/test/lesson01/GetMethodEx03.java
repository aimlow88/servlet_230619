package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
//		response.setContentType("text/plain");
		response.setContentType("text/json");	//JSON String
		
		PrintWriter out = response.getWriter();
		
		// Request Method
		// - get : 브라우저 주소, a클릭, form태그 사용
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		// 링크 태그 중 나이를 넘기지 않는 태그는 오류(500에러)가 난다... -> age가 null값이기 때문에
		// Status code
		// 200 - ok
		// 400 ~ 405 : request 잘못 => 서버에 가지도 못함
		//    - 400 : request parameter 잘못
		//    - 404 : page not found
		//    - 405 : request method 잘못
		// 500 서버 에러 => 이클립스 콘솔 에러 로그 확인
//		out.println("user_id : " + userId);
//		out.println("이름 : " + name);		
//		out.println("나이 : " + age);
		
		// JSON을 출력
		// {"user_id":"aimlow", "name":"홍길동", "age":30}
		out.print("{\"user_id\":\"" + userId + "\",\"name\":\"" + name + "\",\"age\":" + age + "}");
		
	}

}
