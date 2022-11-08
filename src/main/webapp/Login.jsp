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
					<a href="Login.jsp"><img src="imgs/로그인.PNG" class="sprite_compass_icon"></a>
					<a href="Profile.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
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
						<form action="Joinsuccess.jsp">
							<h1>Create Account</h1>
							<!-- 소셜 로그인 영역 -->
							<div class="social-links">
								<div>
									<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
								</div>
								<div>
									<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
								</div>
								<div>
									<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
								</div>
							</div>
							<!-- 회원가입 정보 입력란 -->
							<input type="text" placeholder="ID"> <input
								type="password" placeholder="Password"> <input
								type="text" placeholder="Name"> <input type="text"
								placeholder="Nickname"> <input type="text"
								placeholder="phone">
							<button class="form_btn">Join Up</button>
						</form>
					</div>
					<!-- 로그인 -->
					<div class="sign-in-container">
					<!-- 로그인 정보 보내기 -->
						<form action="#">
							<h1>Sign In</h1>
							<!-- 소셜로그인 -->
							<div class="social-links">
								<div>
									<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
								</div>
								<div>
									<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
								</div>
								<div>
									<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
								</div>
							</div>
							<!-- 로그인 정보입력 -->
							<span>or use your account</span> <input type="text"
								placeholder="ID"> <input type="password"
								placeholder="Password">
							<button class="form_btn">Sign In</button>
						</form>
					</div>
					<!-- 움직이는 영역 -->
					<div class="overlay-container">
					<!-- 로그인으로 넘어가기 -->
						<div class="overlay-left">
							<h1>Welcome Back</h1>
							<p>To keep connected with us please login with your personal
								info</p>
							<button id="signIn" class="overlay_btn">Sign In</button>
						</div>
						<!-- 회원가입으로 넘어가기 -->
						<div class="overlay-right">
							<h1>Hello, Friend</h1>
							<p>Enter your personal details and start journey with us</p>
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
	<!-- 회원가입넘기는 버튼누를시 왼쪽으로 넘어감 -->
	signUpBtn.addEventListener("click", () => {
	  container.classList.add("right-panel-active");
	});
	<!-- 로그인넘기는 버튼누를시 오른쪽으로 넘어감 -->
	signInBtn.addEventListener("click", () => {
	  container.classList.remove("right-panel-active");
	});
</script>
</body>
</html>