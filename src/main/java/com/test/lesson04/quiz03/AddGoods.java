package com.test.lesson04.quiz03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03/add-goods")
public class AddGoods extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int sellerId = Integer.parseInt(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		
		String insertQuery = "insert into `used_goods` "
				+ "(`sellerId`, `title`, `description`, `price`, `pictureUrl`) "
				+ "values "
				+ "('" + sellerId + "', '" + title + ", '"  + description + "', " + price + ", '" +  pictureUrl + "')";
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson04/quiz03/goodsList.jsp");
	}

}
