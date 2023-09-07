<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- BootStrap CDN -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			List<Map<String, Object>> list = new ArrayList<>();
		    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
		    list.add(map);
		    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
		    list.add(map);
		    
		    // out.print(request.getParameter("keyword"));
		    // out.print(request.getParameter("condition"));
		    double conPoint = 0.0;
		    String keyWord = request.getParameter("keyword");
		    if (request.getParameter("condition") != null) {
		    	conPoint = 4.0;
		    }
		    Iterator<Map<String, Object>> iter = list.iterator();
		 %>
		 <div class="container">
		 	<h1 class="d-flex justify-content-center">검색 결과</h1>
		 	<table class="table">
		 		<thead>
		 			<tr class="text-center">
		 				<th scope="col">메뉴</th>
		 				<th scope="col">상호</th>
		 				<th scope="col">별점</th>
		 			</tr>
		 		</thead>
		 		<tbody>
				<%
				    while(iter.hasNext()) {
				    	Map<String, Object> menuMap = iter.next();
				    	String menu = menuMap.get("menu").toString();
				    	double point = Double.parseDouble(menuMap.get("point").toString());
				    	if (menu.equals(keyWord) && point >= conPoint ) {
				 			out.print("<tr class=\"text-center\">");
				 			out.print("<td scope=\"row\">" + menuMap.get("menu").toString() + "</td>");
				 			out.print("<td scope=\"row\">" + menuMap.get("name").toString() + "</td>");
				 			out.print("<td scope=\"row\">" + menuMap.get("point").toString() + "</td>");
			 				out.print("</tr>");
				    	};
				    }
				%>
				</tbody>
		 	</table>
		 </div>
	
	</body>
</html>