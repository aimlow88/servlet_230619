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
		<title>배탈의 민족</title>
	</head>
	<body>
		<div class="container">
			<h1>메뉴 검색</h1>
			<form method="post" action="/lesson02/quiz07_1.jsp">
				<div class="d-flex align-items-center mb-2">
					<input type="text" name="keyword" placeholder="메뉴를 입력하세요." class="form-control col-2 mr-2">
					<label><input type="checkbox" name="condition" value="under4" class="mr-1"><span>4점 이하 제외</span></label>
				</div>
				<input type="submit" class="btn btn-success" value="검색">
			</form>
		</div>
	
	</body>
</html>