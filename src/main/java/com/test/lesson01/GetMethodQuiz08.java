package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String search = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		Iterator<String> iter = list.iterator();
		out.print("<html><head><title>검색 결과</title></head><body>");
		while(iter.hasNext()) {
			String strListValue = iter.next();
			if (strListValue.contains(search)) {
				// 내가 한 것
//				int idx = strListValue.indexOf(search);
//				out.print(strListValue.substring(0, idx));
//				out.print("<b>" + strListValue.substring(idx, idx+2) + "</b>");
//				out.print(strListValue.substring(idx+2) + "<br>");
				// 보너스 풀이 1 -> split을 이용하는 것
				
				// 보너스 풀이 2
				strListValue = strListValue.replace(search, "<b>" + search + "</b>");
				out.print(strListValue + "<br>");
			}
		}
		out.print("</body></html>");
		
	}

}
