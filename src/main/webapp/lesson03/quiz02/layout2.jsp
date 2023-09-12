<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			a, a:hover {text-decoration:none}
			#wrap {height:900px}
			header {height:100px}
			nav {height:40px}
			section {height:600px}
			footer {height:100px}
			.contents {height:250px}
			
		</style>
	</head>
	<body>
		<div id="warp" class="container">
		
			<header class="bg-warning" class="d-flex" >
				<div class="bg-secondary col-2">
					<h3><a href="#" class="text-success">melong</a></h3>
				</div>
				<div class="bg-danger col-10">
					<div class="input-group mb-3">
	  					<input type="text" class="form-control" >
	  					<div class="input-group-append">
    						<button class="btn btn-success" type="button">검색</button>
  						</div>
					</div>
				</div>
			</header>
			
			<nav class="bg-success">
				<ul class="nav">
					<li class="nave-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
					<li class="nave-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
					<li class="nave-item"><a href="#" class="nav-link text-dark font-weight-bold">장루음악</a></li>
					<li class="nave-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
					<li class="nave-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
				</ul>
			</nav>
			
			<%
				String id = request.getParameter("id");
				String title = request.getParameter("title");
				
				List<Map<String, Object>> musicList = new ArrayList<>();
				
			    Map<String, Object> musicInfo = new HashMap<>();
			    musicInfo.put("id", 1);
			    musicInfo.put("title", "팔레트");
			    musicInfo.put("album", "Palette");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
			    musicInfo.put("time", 217);
			    musicInfo.put("composer", "아이유");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 2);
			    musicInfo.put("title", "좋은날");
			    musicInfo.put("album", "Real");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
			    musicInfo.put("time", 233);
			    musicInfo.put("composer", "이민수");
			    musicInfo.put("lyricist", "김이나");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 3);
			    musicInfo.put("title", "밤편지");
			    musicInfo.put("album", "palette");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
			    musicInfo.put("time", 253);
			    musicInfo.put("composer", "제휘,김희원");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 4);
			    musicInfo.put("title", "삐삐");
			    musicInfo.put("album", "삐삐");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
			    musicInfo.put("time", 194);
			    musicInfo.put("composer", "이종훈");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 5);
			    musicInfo.put("title", "스물셋");
			    musicInfo.put("album", "CHAT-SHIRE");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
			    musicInfo.put("time", 194);
			    musicInfo.put("composer", "아이유,이종훈,이채규");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);

			    musicInfo = new HashMap<>();
			    musicInfo.put("id", 6);
			    musicInfo.put("title", "Blueming");
			    musicInfo.put("album", "Love poem");
			    musicInfo.put("singer", "아이유");
			    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
			    musicInfo.put("time", 217);
			    musicInfo.put("composer", "아이유,이종훈,이채규");
			    musicInfo.put("lyricist", "아이유");
			    musicList.add(musicInfo);
			%>
			
			<section class="contents">
				<div class="d-flex mt-4 border border-success p-3">
					<div>
						<img src=<%= musicInfo.get("thumbnail")%> alt="앨범표지" width="150">
					</div>
					<div class="ml-3">
						<%						%>
					</div>
				</div>
				
				<div class="mt-3">
					<h4 class="font-weight-biold">곡 목록</h4>
				</div>
				
				<table class="table text-center">
					<thead>
						<tr>
							<th>No.</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Map<String, Object> item : musicList) {
							
						%>
								<tr>
									<td><%= item.get("id") %></td>
									<td><%= item.get("title") %></td>
									<td><%= item.get("album") %></td>
								</tr>
						<%	
							}
						%>
					</tbody>
				</table>
			</section>
			<footer>
				<hr>
			</footer>
		</div>
	</body>
</html>