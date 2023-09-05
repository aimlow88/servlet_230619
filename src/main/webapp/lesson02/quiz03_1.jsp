<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="container">
			<h2>BMI측정 결과</h2>
			<%!
				public double getBmi(double h, double w){
				
				double result = w / ((h / 100.0) * (h / 100.0));
				return result;
			}
			%>
			<%
				int h = Integer.parseInt(request.getParameter("height"));
				int w = Integer.parseInt(request.getParameter("weight"));
				double bmiValue = w / ((h / 100.0) * (h / 100.0));
				String result = "";
				if (bmiValue <= 20) {
					result = "저체중";
				} else if (bmiValue <= 25) {
					result = "정상";
				} else if (bmiValue <= 30) {
					result = "과체중";
				} else {
					result = "비만";
				}
			%>
			<h1>당신은 <%= result %> 입니다.</h1>
			<h5>BMI수치 : <%= bmiValue %></h5>			
		</div>
	</body>
</html>