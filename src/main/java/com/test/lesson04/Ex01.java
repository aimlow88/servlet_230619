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

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 응답 plain
		response.setContentType("text/plain");
		
		// DB연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); //★★★★★ 실질적인 DB 연결 (꼭 넣어야 함)
		
		// DB인서트 쿼리 수행
		String insertQuery = "insert into `used_goods` "
				+ "(`sellerId`, `title`, `description`, `price`) "
				+ "values "
				+ "(5, '자쿠팝니다.', '샤아가 타고 다닌 사자비 기체에요...', 3000)";
		try {
			ms.update(insertQuery);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		// DB 셀렉트 쿼리 수행 & 출력
		PrintWriter out = response.getWriter();
		String query = "select * from `used_goods`";
		try {
			ResultSet res = ms.select(query);
			while (res.next()) {//결과행이 있는 동안 계속 수행
				out.println(res.getInt("sellerId"));
				out.println(res.getString("title"));
				out.println(res.getInt("price"));
				out.println(res.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
	}
}
