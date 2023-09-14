package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/deleteurl")
public class DeleteUrl extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		String strid = request.getParameter("id");
		int id = Integer.parseInt(strid);
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String deleteQuery = "delete from `quiz02` where `id` =" + id;
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("/lesson04/quiz02/urlList.jsp");
		
		ms.disconnect();
	}

}
