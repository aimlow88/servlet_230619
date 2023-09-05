<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Quiz01</title>
	</head>
	<body>
		<!-- 1)1부터 n까지의 합계를 구하는 함수 -->
		<%!
			public int getSum(int n){
				int sum = 0;
				for (int i = 1; i <= n; i++){
					sum += i;
				}
				return sum;
			}
		%>
			<h2>1부터 50까지의 합은 <%= getSum(50) %></h2>
		
		
		<!-- 2)점수들의 평균 구하기 -->
		<%
			int[] scores = {80, 90, 100, 95, 80};
			
			int sum = 0;
			for (int i = 0; i < scores.length; i++){
				sum += scores[i];
			}
			double avg = (double) sum / scores.length;
		%>
		<h2>평균 점수 : <%= avg %></h2>
		
		<!-- 3)채점 결과 -->
		<%
			List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
			
			int cnt = 0;
			Iterator<String> iter = scoreList.iterator();
			while(iter.hasNext()){
				if (iter.next().equals("O")) {
					cnt++;
				}
			}
		%>
		<h2>점수 : <%= cnt * 100 / scoreList.size() %></h2>
		
		<!-- 4)나이 구하기 -->
		<%
			String birthDay = "20010820";
			int birth = Integer.parseInt(birthDay.substring(0, 4));
			int age = 2023 - birth;
		%>
		<h2>나이 : <%= age %></h2>
		 
		
	</body>
</html>