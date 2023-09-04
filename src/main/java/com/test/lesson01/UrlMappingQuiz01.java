package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		Date now = new Date();
		
//		SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
//		SimpleDateFormat sdfMonth = new SimpleDateFormat("MM");
//		SimpleDateFormat sdfDay = new SimpleDateFormat("dd");
//		out.println("오늘의 날짜는 " + sdfYear.format(now) + "년 " + sdfMonth.format(now) + "월 " + sdfDay.format(now) + "일");
		
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 M월 d일");
		out.println(sdf.format(now));
	}

}
