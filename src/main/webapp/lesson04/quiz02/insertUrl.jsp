<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="post" action="/lesson04/inserturl">
			<h1>즐겨찾기 추가</h1>
			<span>사이트명:</span><br>
			<input type="text" name="name"><br>
			<span>사이트 주소:</span><br>
			<input type="text" name="url">
			<p>
				<input type="submit" value="추가">
			</p>
		</form>
	</body>
</html>