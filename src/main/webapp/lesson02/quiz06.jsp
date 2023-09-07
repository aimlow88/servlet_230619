<%@page import="java.util.Arrays"%>
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
		<%!
  			List<String> goodsList = Arrays.asList(new String[]{ 
	  		    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
	  		});
		%>
		
		<div class="wrap container" style="margin:auto">
		  <div class="d-flex justify-content-center">
		  	<h1>장보기 목록</h1>
		  </div> 
		  <div>
		  	<table class="table text-center">
		  		<thead>
				  	<tr>
				  		<th scope="col">번호</th>			  		
				  		<th scope="col">품목</th>
				  	</tr>
			  	</thead>
			  	<tbody>
				  	<%
				  		for (int i = 0; i < goodsList.size(); i++) {
				  			out.print("<tr><th scope=\"row\">" + (i + 1) + "</th>");
				  			out.print("<td>" + goodsList.get(i) + "</td></tr>");
				  		}
				  	%>
			  	</tbody>
		  	</table>
		  </div>
		</div>
	</body>
</html>