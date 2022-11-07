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
	<section id="container">

		<!-- 머리글 -->
		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="Main.jsp">
						<div class="sprite_insta_icon"></div>
						<div>
							<div class="sprite_write_logo"></div>
						</div>
					</a>
				</h1>

				<div class="search_field">
					<input type="text" placeholder="검색" tabindex="search_field">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>검색</span>
					</div>
				</div>


				<div class="right_icons">
					<a href="Login.jsp"><img src="imgs/로그인.PNG"
						class="sprite_compass_icon"></a> <a href="Profile.jsp"><img
						src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a> <a
						href="Top10Ranking.jsp"><img src="imgs/랭킹버튼.PNG"
						class="sprite_user_icon_outline"></a> <a href="DM.jsp"> <img
						src="imgs/채팅.PNG" class="sprite_user_icon_outline"></a>
				</div>
			</section>
		</header>

	</section>
	<!-- 채팅영역  -->
	<div id="chat-room">
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





	</div>
	<!-- 채팅 자바스크립트 아직 다시 안봐봄..공부하자  -->
	<script>
    var k = function() {
        // val()은 엘리먼트가 가지고 있는 value 속성의 값을 가져온다.
        var 메세지 = $('#chat-room .input-box #text-input').val();
        
        // 메세지 변수에 들어있는 값이 ''와 같다면
        if ( 메세지 == '' ) {
            // 함수를 더 이상 진행시키지 않고 여기서 종료시킨다.
            return false;
        }
        
        var html = `
        <div class="chat-message mine">
            <section><i class="fa fa-user"></i></section>
            <span>홍길동</span>
            <div>${메세지}</div>
        </div>
        `;
        
        $('#chat-room .message-group:last-child').append(html);
        
        // val(문자열)은 엘리먼트가 가지고 있는 value 속성의 값을 입력받은 문자열로 교체하라는 뜻입니다.
        $('#chat-room .input-box #text-input').val('');
    };

    $('#chat-room .input-box .btn-submit').click(k);

    // input 창에서 키보드 눌림 이벤트 발생시 함수를 실행하도록 예약
    $('#chat-room .input-box #text-input').keydown(function(e) {
        // 만약 입력한 키코드가 13, 즉 엔터라면 함수를 실행한다.
        if ( e.keyCode == 13 ) {
            k();
        }
    });
    </script>
</body>
</html>