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
		<title>계산 결과</title>
	</head>
	<body>
		<%!
			public  double add (double num1, double num2){
			return num1 + num2;
			}
			public  double sub (double num1, double num2){
			return num1 - num2;
			}
			public  double mult (double num1, double num2){
			return num1 * num2;
			}
			public  double div (double num1, double num2){
			return num1 / num2;
			}
		%>
		<%
			double num1 = Double.parseDouble(request.getParameter("number1"));
			double num2 = Double.parseDouble(request.getParameter("number2"));
			String op = request.getParameter("operator");
			
			double result = 0;
			
			if (op.equals("+")) {
				result = add(num1, num2);
			} else if (op.equals("-")){
				result = sub(num1, num2);
			} else if (op.equals("X")){
				result = mult(num1, num2);
			} else {
				result = div(num1, num2);
			}
		%>
		<div class="container">
			<h1>계산 결과</h1>
			<div class=display-4>
				<%= num1 %> <%= op %> <%=num2 %> = <span class="text-primary"><%= result %></span>
			</div>
		</div>
	</body>
</html>