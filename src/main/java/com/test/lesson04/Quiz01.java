package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String query = "select * from real_estate";
		try {
			ResultSet res = ms.select(query);
			while (res.next()) {//결과행이 있는 동안 계속 수행
				out.println(res.getInt("realtorId"));
				out.println(res.getString("address"));
				out.println(res.getInt("area"));
				out.println(res.getString("type"));
				out.println(res.getInt("price"));
				out.println(res.getInt("rentPrice"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
	}

}
