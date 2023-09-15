<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select b.pictureUrl as pictureUrl, b.title as title, b.price as price, a.nickName as nickName " +
			"from `seller` a " +
			"right join `used_goods` b " +
			"on a.id = b.sellerId " +
			"order by a.id desc";
	
	ResultSet res = ms.select(selectQuery);
%>
<div class="d-flex flex-wrap justify-content-between">
	<%
		while (res.next()) {
	%>
	<div class="goods-box border border-warning mt-3">
		<img src="<%= res.getString("pictureUrl") %> alt="상품이미지" width="200px">
		<div class="display-6 font-weight-bold"><%= res.getString("title") %></div>
		<div class="display-6 text-muted"><%= res.getInt("price") %>원</div>
		<div class="display-6 rext-warning"><%= res.getString("nickName") %></div>
	</div>
	<%
		}
	%>
</div>
<%
	ms.disconnect();
%>