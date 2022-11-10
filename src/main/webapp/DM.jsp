<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/DM.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
		<!-- 헤더영역(상단 메뉴바) -->
	<section id="container">
		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="Main.jsp">
						<img src="imgs/로고.JPG">
						
					</a>
				</h1>

				<div class="search_field">
					<div class="fake_field">
						<input  type="text" placeholder="검색" tabindex="search_field">
					</div>
						<span class=sprite_small_search_icon></span> 
				</div>
			</section>
		</header>
	</section>
		<!---------------------------- 메뉴바 종료  ---------------------------->
		
		
	<!-- 채팅영역  -->
	<div class="contents">
		<div class="message-box">
		<!-- 날짜 표시영역 -->
			<div class="message-group" data-date-str="2014년 12월 10일 일요일">
			<!-- 타유저 채팅영역 -->
				<div class="chat-message other">
				<!-- 타유저 닉넴 -->
					<section>
						<i class="fa fa-user"></i>
					</section>
					<!-- 타유저 채팅전송 -->
					<span>아들</span>
					<div>굿모닝!!!!</div>
				</div>
				<!-- 본인 채팅 -->
				<div class="chat-message mine">
				<!-- 본인 -->
					<section>
						<i class="fa fa-user"></i>
					</section>
					<!-- 본인 이름 -->
					<span>홍길동</span>
					<div>새벽공기가 쌀쌀하구나</div>
				</div>
			</div>
			<!--  -->
			<div class="message-group" data-date-str="2014년 12월 11일 월요일">
				<div class="chat-message other">
					<section>
						<i class="fa fa-user"></i>
					</section>
					<span>아들</span>
					<div>굿모닝!!!! 입니다!</div>
				</div>

				<div class="chat-message mine">
					<section>
						<i class="fa fa-user"></i>
					</section>
					<span>홍길동</span>
					<div>오늘은 날씨가 좋네~ ㅎㅎ</div>
				</div>

			</div>
		</div>
		<!-- 채팅입력란 -->
		<div class="input-box">
			<input type="text" id="text-input">
			<!-- 첨부파일 -->
			<div class="btn-plus">
				<i class="fa fa-plus" aria-hidden="true"></i>
			</div>
			<!-- 채팅전송 버튼  -->
			<div class="btn-submit">
				<span>전송</span>
			</div>
		</div>
	</div>

				<!-- 오른쪽영역  -->
				<div class="side_box">
				<!-- 게시물 등록 버튼 -->              




	</div>
	
</body>
</html>