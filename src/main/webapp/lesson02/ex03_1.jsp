<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>결과</title>
	</head>
	<body>
		<%
			String nickName = request.getParameter("nickname");
			String hobby = request.getParameter("hobby");
			String animal = request.getParameter("animal");
			String[] foodsArr = request.getParameterValues("food");
			String fruit = request.getParameter("fruits");
		%>
		
		<table border="1">
			<tr>
				<th>별명</th>
				<td><%= nickName %></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><%= hobby %></td>
			</tr>
			<tr>
				<th>선호하는 동물</th>
				<td><%= animal %></td>
			</tr>
			<tr>
				<th>선호하는 과일</th>
				<td><%= fruit %></td>
			</tr>
			<tr>
				<th>선호하는 음식</th>
				<td>
					<%
						String result = "";	
						if (foodsArr != null) {
							for (String foods : foodsArr) {
								result += foods + ",";
							}
						}
						out.print(result.substring(0, result.length() - 1));
					%>
				</td>
			</tr>
		</table>
	</body>
</html>