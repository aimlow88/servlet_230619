<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>URL 목록</title>
	</head>
	
	<%
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String selectQuery = "select * from `quiz02`";
		
		ResultSet res = ms.select(selectQuery);
	%>
	<body>
		<table border="1">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<%
					while(res.next()){
				%>
				<tr>
					<td><%= res.getString("name") %></td>
					<td><a href="<%= res.getString("url") %>"><%= res.getString("url") %></a></td>
					<td><a href="/lesson04/deleteurl?id=<%= res.getInt("id") %>">삭제</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		
		<%
			ms.disconnect();
		%>
	</body>
</html>