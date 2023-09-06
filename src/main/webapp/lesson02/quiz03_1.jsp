<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
			<%!
				public double getBmi(double h, double w){
				
					double result = w / ((h / 100.0) * (h / 100.0));
					return result;
				}
			
				public String result (double bmiValue) {
					if (bmiValue <= 20) {
						return "저체중";
					} else if (bmiValue <= 25) {
						return "정상";
					} else if (bmiValue <= 30) {
						return "과체중";
					} else {
						return "비만";
					}
				}
			%>
			<%
				int h = Integer.parseInt(request.getParameter("height"));
				int w = Integer.parseInt(request.getParameter("weight"));
				// double bmiValue = w / ((h / 100.0) * (h / 100.0));
				// String result = result(getBmi(h, w));
			%>
		<div class="container">
			<h2>BMI측정 결과</h2>
			<div class="display-4">
				당신은 <span class="text-info"><%= result(getBmi(h, w)) %></span> 입니다.
			</div>
			<h5>BMI수치 : <%= getBmi(h, w) %></h5>			
		</div>
	</body>
</html>