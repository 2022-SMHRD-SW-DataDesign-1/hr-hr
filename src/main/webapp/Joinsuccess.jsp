<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>



<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/Joinsuccess.css">

</head>
<body>
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

	<section class="main">
		<div class="mb-wrap mb-style-2">
			<blockquote>
				<p>
					<br> Join success! <br> Welcome to the page

				</p>
			</blockquote>
		</div>
		<!--#mb-wrap-->



	</section>

	<div class="btn-container">
		<a href="Main.jsp" class="btn-3d green">메인메뉴 돌아가기</a>
	</div>
	</section>
	<script>
		$('a').click(function(event) {
			event.preventDefault();
		});
	</script>
</body>
</html>