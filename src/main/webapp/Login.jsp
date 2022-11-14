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

<title>Peasy</title>

<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">

</head>
<body>
	<%
		String errMsg = (String)session.getAttribute("errMsg");
	if(errMsg ==null){
		errMsg ="";
	}
	session.invalidate();
	%>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript"
		src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
		charset="utf-8"></script>


	<section id="container">



		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="homepage.jsp"> <img src="imgs/로고.JPG">

					</a>
				</h1>

				<div class="search_field">
					<input type="text" placeholder="검색" tabindex="search_field">

					<div class="fake_field">
						<span class=sprite_small_search_icon></span> <span>검색</span>
					</div>
				</div>


				<div class="right_icons"></div>
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

							<!-- 회원가입 정보 입력란 -->
							<input type="text" name="m_Id" id="inputID" placeholder="ID">
							<input type="button" value="ID중복체크" onclick="checkID()"
								class="form_btn"> <span id="resultCheckID"></span><br>
							<input type="password" name="m_Pw" placeholder="Password">
							<input type="text" name="m_Email" placeholder="Email"> <input
								type="text" name="m_Nickname" placeholder="Nickname"> <input
								type="text" name="m_Phone" placeholder="phone"> <input
								type="submit" id="joinBtn" value="가입하기" disabled="disabled"
								class="form_btn">
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

								<!-- 네이버 로그인 버튼 -->
								<div id="naver_id_login">Nv</div>

								<!-- 카카오 로그인 버튼 -->
								<div onclick="kakaoLogin();">
									<img class="social_icon" src="./imgs/kakao_login_small.png">
								</div>
							</div>
							<!-- 로그인 정보입력 -->
							<span>로그인</span> <input type="text" name="m_Id" placeholder="ID">
							<input type="password" name="m_Pw" placeholder="Password">
							<span id="errMsg"><%=errMsg %></span>
							<input type="submit" value="Sign In" class="form_btn">
						</form>
					</div>
					<!-- 움직이는 영역 -->
					<div class="overlay-container">
						<!-- 로그인으로 넘어가기 -->
						<div class="overlay-left">
							<h1>안녕하세요</h1>
							<p>회원가입시 입력한 정확한 ID와 PW를 입력하여 주십시오</p>
							
							<p>로그인을 하기위해서 당신의 회원정보를 입력하십시오.</p>
							<button id="signIn" class="overlay_btn">Sign In</button>
						</div>
						<!-- 회원가입으로 넘어가기 -->
						<div class="overlay-right">
							<h1>환영합니다</h1>
							<p>로그인을 하기위해서 당신의 회원정보를 입력하십시오.</p>
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

	<!-- 네이버 로그인 스크립트 -->
	<script type="text/javascript">
  	var naver_id_login = new naver_id_login("n2hM2OM8Nq0pdDU9ufkL", "http://localhost:8081/dirverR/naverLogin.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 1,40);
  	naver_id_login.setDomain("http://localhost:8081/dirverR/Login.jsp");
  	naver_id_login.setState(state);
  	//naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>

	<!-- 카카오 로그인 스크립트 -->
	<script>
	//발급받은 키 중 javascript키를 사용해준다.
	Kakao.init('10f8004f601643f56798d54c5fc82e6e');
	
	// sdk초기화여부판단
	console.log(Kakao.isInitialized());
	
	//카카오로그인
	let m_Phone = "0000";
	let m_Pw = "0000";
	
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  console.log(response.id)
	        	  console.log(m_Pw)
	        	  console.log(response.kakao_account.email)
	        	  console.log(response.properties.nickname)
	        	  console.log(m_Phone)
	        	  
	        	   $.ajax({
	        		   url : "KakaoService",    
	        		   type : "post",
	        		   data :{
	        		       	"m_id": response.kakao_account.email,
	        		       	"m_pw": m_Pw,
	        		       	"m_email": response.kakao_account.email,
	        		       	"m_nickname": response.properties.nickname,
	        		       	"m_Phone": m_Phone
       		       			},
	       		        success : function (data){
	       		        	console.log(data);
	       		        	location.replace("./Main.jsp")
	       		        },
	        		})
	        	  
	          },
	          fail: function (error) {
	           	console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
	
	
	//카카오로그아웃  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
</script>

</body>
</html>