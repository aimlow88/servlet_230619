<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong - 아이유</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
a, a:hover {text-decoration:none;}
header {height:100px;}
nav {height:40px;}
.contents {min-height:500px;}
footer {height:200px;}
</style>
</head>
<body>
<%
//아이유 노래 리스트 
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

<%--
	String keyWord = request.getParameter("keyword");
	String id = request.getParameter("id");
--%>

		<section class="contents">
			<%
				String keyWord = request.getParameter("keyword");
				String id = request.getParameter("id");
				
				for (Map<String, Object> music : musicList){
					if (music.get("title").toString().equals(keyWord) || music.get("id").toString().equals(id)) {
						int time = (Integer) music.get("time");
						int mm = time / 60;
						int ss = time % 60;
			%>
						<%-- 노래 정보 영역 --%>
						<div class="d-flex mt-4 border border-success p-3">
							<%-- 이미지 --%>				
							<div>
								<img src="<%= music.get("thumbnail") %>" alt="앨범 표지" width="150">
							</div>
							<%-- 노래 정보 --%>
							<div class="ml-3">
								<div class="display-4"><%= music.get("title") %></div>
								<div class="text-success font-weight-bold"><%= music.get("singer") %></div>
								<div class="d-flex text-secondary">
									<div class="mr-4">
										<div>앨범</div>
										<div>재생시간</div>
										<div>작곡가</div>
										<div>작사가</div>
									</div>
									<div>
										<div><%= music.get("album") %></div>
										<div><%= mm + ":" + ss %></div>
										<div><%= music.get("composer") %></div>
										<div><%= music.get("lyricist") %></div>
									</div>
								</div>
							</div>
						</div>
			<%		
						break;
					}
				}
			%>
			<br>
			<p>
				<div class="col-12">
					<h3 class="font-weight-bold">가사</h3>
					<hr>
					<h6 class="font-weight-bold">가사 정보 없음</h6>
				</div>
			</p>
		</section>