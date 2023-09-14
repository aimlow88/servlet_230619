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

@WebServlet("/lesson04/testmaria")
public class TestMaria extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String query = "select *"
				+ " from `user`";
		try {
			ResultSet res = ms.select(query);
			while (res.next()) {//결과행이 있는 동안 계속 수행
				out.print("ID : " + res.getInt("id"));
				out.print(", 이름 : " + res.getString("name"));
				out.println(", 취미 : " + res.getString("hobby"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
	}

}
