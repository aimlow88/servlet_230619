<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<div class="ml-5">
		<p>
		<div class="display-4">물건 올리기</div>
		</p>
		<form method="post" action="/lesson04/quiz03/add-goods">
			<div class="d-flex">
			
				<select class="form-control col-3 mr-3" name="nickName">
					<option name="sellerId" value="0" checked>- 아이디 선택 -</option>
				<%
					MysqlService ms = MysqlService.getInstance();
					ms.connect();
					
					String selectQuery = "select `id`, `nickName` from `seller`";
					
					ResultSet res = ms.select(selectQuery);
					
					while (res.next()) {
				%>
					<option name="sellerId" value="<%= res.getInt("sellerId") %>"><%= res.getString("nickName") %></option>
				<%
					}
					
					ms.disconnect();
				%>
				</select>
				
				<input type="text" class="form-control col-4 mr-3" placeholder="제목" name="title">

				<div class="input-group mb-3">
					<input type="text" class="form-control col-3" placeholder="가격"
						name="price">
					<div class="input-group-append">
						<span class="input-group-text">원</span>
					</div>
				</div>
			</div>

			<div>
				<textarea name="description" class="form-control col-9 mb-3"
					rows="5"></textarea>
			</div>

			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">이미지URL</span>
				</div>
				<input type="text" class="form-control col-8" name="pictureUrl">
			</div>
			<input type="submit" class="form-control col-9 bg-secondary text-white" value="저장">
		</form>


	</div>
</div>