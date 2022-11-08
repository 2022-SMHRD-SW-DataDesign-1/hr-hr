<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./css/homepage.css">
<link rel="stylesheet" href="css/bootstrap.css">

</head>

<body>
	<header>
		<img src="./imgs/로고.png" class="logoimg">
	</header>
	<section id="main_container">
		<div class="com">
			<div class="middle">
				<img src="./imgs/wow.png" class="py">
			</div>
			<div>
				<img src="./imgs/로고.png" class="s-logoimg">
				<h1 class="hii">정부정책을 더 쉽게!</h1>
				<a href="Login.jsp"><button class="start">로그인/회원가입</button></a>
			</div>
		</div>

		<div class="side_box">
			<div class="img_section">
				<div class="trans_inner">
					<div>
						<!-- 이미지 넘기기 -->
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="true">
							<!-- 이미지수 정하기 -->
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-label="Slide 1"
									aria-current="true"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2" class=""></button>

							</div>
							<!-- 이미지 넣는 부분 -->
							<div class="carousel-inner">
								<div class="carousel-item active">
									<!-- 여기에 사진넣기 -->
									<img src="./imgs/로고.png" alt="visual01">

								</div>
								<div class="carousel-item">
									<!-- 여기에 사진넣기 -->
									<img src="./imgs/wow.png" alt="visual02">
								</div>
							</div>
							<!-- 이미지 오른쪽으로 넘기기 -->
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<!-- 이미지 왼쪽으로 넘기기 -->
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>

				</div>

			</div>


		</div>



	</section>
	<!-- <a href="DM.html"><button class="start">로그인/회원가입</button></a> -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>

</html>