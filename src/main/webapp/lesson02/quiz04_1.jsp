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
		<title>길이 변환</title>		
	</head>
	<body>
		<div class="container">
			<%
				String[] unitList = request.getParameterValues("length_unit");
				double centiMeter = Double.valueOf(request.getParameter("length"));
			%>
				
			<h1>길이 변환 결과</h1>
			<h3><%= centiMeter %>cm</h3>
			<hr>
			<%
				for (int i = 0; i < unitList.length; i++) {
					if (unitList[i].equals("inch")) {
						double inch = centiMeter / 2.54f;
						out.print("<h2>" + inch + "in</h2>");
					} else if (unitList[i].equals("yard")) {
						double yd = centiMeter / 91.44f;
						out.print("<h2>" + yd + "yd</h2>");
					} else if (unitList[i].equals("feet")) {
						double ft = centiMeter / 30.48f;
						out.print("<h2>" + ft + "ft</h2>");
					} else {
						double meter = centiMeter / 100;
						out.print("<h2>" + meter + "m</h2>");
					}
				}
			%>
		</div>
	</body>
</html>