<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
<meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
<meta property="og:type" content="website">
<meta property="og:title" content="instagram">
<meta property="og:description" content="instagram clone">
<meta property="og:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
.
<!-- Twitter Meta Tags / 트위터 -->
<meta name="twitter:card" content="instagram clone">
<meta name="twitter:title" content="instagram">
<meta name="twitter:description" content="instagram clone">
<meta name="twitter:image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

<!-- Google / Search Engine Tags / 구글 검색 엔진 -->
<meta itemprop="name" content="instagram">
<meta itemprop="description" content="instagram clone">
<meta itemprop="image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


<title>instagram</title>

<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	/* MemberDTO dto = new MemberDTO();*/
	%>
<script src="http://code.jquery.com/jquery-latest.js"></script>


	<section id="container">



		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="Main.jsp">
						<img src="imgs/로고.png">
						
					</a>
				</h1>

				<div class="search_field">
					<input type="text" placeholder="검색" tabindex="search_field">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>검색</span>
					</div>
				</div>


				<div class="right_icons">
					
				</div>
			</section>
		</header>


		<div id="main_container">
			<!-- 로그인창 영역 wrapper로 조절-->
			<div class="wrapper">
				<div class="container">
				<!-- 회원가입 -->
					<div class="sign-up-container">
					<!-- 회원가입 정보 보내기 -->
						<form action="JoinService" method="post">
							<h1>회원가입</h1>
							<!-- 소셜 로그인 영역 -->
							<div class="social-links">
								
								<div>
									<a href="#"><i ></i></a>
								</div>
							</div>
							<!-- 회원가입 정보 입력란 -->
							<input type="text" name="m_Id" id="inputID" placeholder="ID"> 
							<input type="button" value="ID중복체크" onclick="checkID()" class="form_btn">
							<span id="resultCheckID"></span><br> 
							<input type="password" name="m_Pw" placeholder="Password"> 
							<input type="text" name="m_Email" placeholder="Email"> 
							<input type="text" name="m_Nickname" placeholder="Nickname"> 
							<input type="text" name="m_Phone" placeholder="phone">
							<input type="submit" id="joinBtn" value="Join up" disabled="disabled" class="form_btn">
						</form>
						
						<script>
							function checkID() {
								let inputID = $("#inputID").val();
								console.log(inputID);
	
								$.ajax({
									// 요청서버 url
									url : "IDCheckService",
									// 요청할 때 같이 보내줄 데이터
									data : {"inputID" : inputID},
									// 요청 타입
									type : 'get', 
									// 통신 성공 function(넘겨준데이터)
									success : function(data) {
										console.log(typeof data);
										if (data == 'true') {
											$("#resultCheckID").text("중복");
											$("#joinBtn").attr("disabled",true);
										} else {
											$("#resultCheckID").text("가능");
											$("#joinBtn").attr("disabled",false);
										}
									},
									// 통신 실패
									error : function() {
										console.log("조샀다 !");
									}
								})
							}
						</script>
						
					</div>
					<!-- 로그인 -->
					<div class="sign-in-container">
					<!-- 로그인 정보 보내기 -->
						<form action="LoginService" method="post">
							<h1>Sign In</h1>
							<!-- 소셜로그인 -->
							<div class="social-links">
								
								<div>
									<a href="#"><i ></i></a>
								</div>
							</div>
							<!-- 로그인 정보입력 -->
							<span>로그인</span> 
								<input type="text" name="m_Id" placeholder="ID"> 
								<input type="password" name="m_Pw" placeholder="Password">
								<input type="submit" value="Sign In" class="form_btn">
							</form>
							<%if(info != null){ %>
	 						멤버정보 :<%= info.toString() %>
	 						<%} %>
					</div>
					<!-- 움직이는 영역 -->
					<div class="overlay-container">
					<!-- 로그인으로 넘어가기 -->
						<div class="overlay-left">
							<h1>환영합니다</h1>
							<p> 로그인을 하기위해서 당신의 회원정보를 입력하십시오.</p>
							<button id="signIn" class="overlay_btn">Sign In</button>
						</div>
						<!-- 회원가입으로 넘어가기 -->
						<div class="overlay-right">
							<h1>안녕하세요</h1>
							<p>회원가입시 입력한 정확한 ID와 PW를 입력하여 주십시오</p>
							<button id="signUp" class="overlay_btn">Sign Up</button>
						</div>
					</div>
				</div>
			</div>
		</div>


	</section>


	<!-- 로그인 자바스크립트 -->
	<script>
		const signUpBtn = document.getElementById("signUp");
		const signInBtn = document.getElementById("signIn");
		const container = document.querySelector(".container");
		
		signUpBtn.addEventListener("click", () => {
		  container.classList.add("right-panel-active");
		});
		
		signInBtn.addEventListener("click", () => {
		  container.classList.remove("right-panel-active");
		});
	</script>
	
</body>
</html>