<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<style>
		/* 아래 페이지에 할 수 있음  */
		.post_form_container {
			max-width: 550px;
			margin: 0 auto;
		}
		
		/* 네모난 칸 */
		.post_form {
			padding: 40px;
			background-color: #fff;
			border: 1px solid #e6e6e6;
			margin: 0 0 10px;
		}
		
		/* 무엇인지 모르겠음  */
		.post_form .title {
			margin: 0 10px 40px;
			font-weight: 400;
			font-size: 30px;
			text-align: center;
		}
		
		.post_form .preview {
			margin-bottom: 30px;
		}
		
		.post_form .preview .upload {
			max-width: 300px;
			height: 300px;
			border: 1px solid #e6e6e6;
			margin: 0 auto;
			display: flex;
			justify-content: center;
			align-items: center;
			position: relative;
		}
		</style>
<link rel="stylesheet" href="css/common.css">
</head>
<body>
	<h1>top10ranking 페이지입니다.</h1>

	<header id="header">
		<section class="h_inner">

			<h1 class="logo">
				<a href="index.html">
					<div class="sprite_insta_icon"></div>
					<div>
						<div class="sprite_write_logo"></div>
					</div>
				</a>
			</h1>

			<div class="search_field">
				<input type="text" placeholder="검색" tabindex="0">

				<div class="fake_field">
					<span class=sprite_small_search_icon></span> <span>검색</span>
				</div>
			</div>


			<div class="right_icons">
				<a href="new_post.html">
					<div class="sprite_camera_icon"></div>
				</a> <a href="login.html">
					<div class="sprite_compass_icon"></div>
				</a> <a href="follow.html">
					<div class="sprite_heart_icon_outline"></div>
				</a> <a href="profile.html">
					<div class="sprite_user_icon_outline"></div>
				</a>
			</div>
		</section>

	</header>

	<section id="main_container">
		<div class="post_form_container">
			<div class="post_form">
				<h1>top 10</h1>
				<div class="title">
					<h2>안녕</h2>

				</div>
			</div>
			<div class="preview">
				<h2>preview</h2>

			</div>
			<div class="upload">

				<h5>upload</h5>
			</div>


		</div>
	</section>

</body>
</html>