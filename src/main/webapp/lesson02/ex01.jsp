<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	<body>
		<!-- HTML 주석 : 브라우저 소스보기에서 보임 -->
		<%-- JSP 주석 : 브라우저 소스 보기에서 안보임 --%>
	<%
		// 이것은 자바의 주석
		// 스크립틀릿(Scriptlet) - 메인함수 같은 느낌
		int sum = 0;
		for (int i = 1; i <= 10; i++){
			sum += i;
		}
		// List<String> list = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	%>
	<%-- <%= %> : expression 문법 --%>
	<b>합계 :</b>
	<input type="text" value="<%= sum %>">
	<br>
	
	<%!
		//선언문 : 클래스 같은 느낌
		
		// 필드
		private int num = 100;
	
		// 메소드
		public String getHelloWorld(){
			return "Hello World";
		}
	%>
	
	<%= getHelloWorld() %>
	
	<br>
	
	<%= num + 200 %>
	
	</body>
</html>