<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

		<meta name="mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="default">
		
		<!-- Google / Search Engine Tags / 구글 검색 엔진 -->
		<meta itemprop="name" content="instagram">
		<meta itemprop="description" content="instagram clone">
		<meta itemprop="image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


		<title>instagram</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/detail-page.css">
		<link rel="shortcut icon" href="imgs/instagram.png">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">


		<style>
			#main_container {
				/*height: 6000px;*/

			}
		</style>
	</head>

	<body>


		<section id="container">


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
						<input type="text" placeholder="검색" tabindex="0">

						<div class="fake_field">
							<span class=sprite_small_search_icon></span> <span>검색</span>
						</div>
					</div>


					<div class="right_icons">
						<a href="NewPost.jsp">
							<div class="sprite_camera_icon"></div>
						</a>
						<a href="Login.jsp">
							<div class="sprite_compass_icon"></div>
						</a> <a href="Follow.jsp">
							<div class="sprite_heart_icon_outline"></div>
						</a>
						<a href="Profile.jsp">
							<div class="sprite_user_icon_outline"></div>
						</a>
					</div>
				</section>
			</header>


			<div id="main_container">

				<section class="b_inner">

					<div class="contents_box">

						<article class="contents cont01">

							<div class="user_container">
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="">
								</div>
								<div class="user_name">
									<div class="nick_name">Admin</div>
									<div class="country">Seoul, South Korea</div>

                                    
								</div>
                                <div class="right_button">
                                    <button type="button" class="btn btn-outline-dark"><a href="reviewboard.html">리뷰</a></button>
                                </div>
							</div>

							<div class="img_section">
								<div class="trans_inner">
									<div>
										<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                                            <div class="carousel-indicators">
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
											  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4" class=""></button>
											  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5" class=""></button>
											  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6" class=""></button>
											  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="6" aria-label="Slide 7" class=""></button>
                                            </div>
                                            <div class="carousel-inner">
                                              <div class="carousel-item active">
                                                <!-- 여기에 사진넣기 --> 	
                                                <img src="imgs/국민취업지원제도1.png" alt="visual01">
                                          
                                              </div>
                                              <div class="carousel-item">
                                                <!-- 여기에 사진넣기 --> 				
                                                <img src="imgs/국민취업지원제도2.png" alt="visual02"> 								  
                                              </div>	
                                                <div class="carousel-item">
                                                <!-- 여기에 사진넣기 --> 	
                                                <img src="imgs/국민취업지원제도 3.png" alt="visual03"> 
                                          	</div>
											  <div class="carousel-item">
                                                <!-- 여기에 사진넣기 --> 				
                                                <img src="imgs/국민취업지원제도 4.png" alt="visual04"> 								  
                                              </div>
											  <div class="carousel-item">
                                                <!-- 여기에 사진넣기 --> 				
                                                <img src="imgs/국민취업지원제도 5.png" alt="visual05"> 								  
                                              </div>
											  <div class="carousel-item">
                                                <!-- 여기에 사진넣기 --> 				
                                                <img src="imgs/국민취업지원제도 6.png" alt="visual06"> 								  
                                              </div>
											  <div class="carousel-item">
                                                <!-- 여기에 사진넣기 --> 				
                                                <img src="imgs/국민취업지원제도7.png" alt="visual07"> 								  
                                              </div>
                                            </div>
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                              <span class="visually-hidden">Previous</span>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                              <span class="visually-hidden">Next</span>
                                            </button>
                                          </div>
									</div>
								</div>
							</div>


							<div class="detail--right_box">


								<header class="top">

									<div class="admin_container">
										<div class="comment">
											<span class="user_id">Kindtiger</span>강아지가 많이 힘든가보다ㅜㅜㅜㅜㅜ조금만힘내
											<div class="time">2시간</div>
										</div>
									</div>
									<div class="sprite_more_icon" data-name="more">
										<ul class="more_detail">
											<li>팔로우</li>
											<li>수정</li>
											<li>삭제</li>
										</ul>
									</div>
								</header>


								<section class="scroll_section">

									<div class="user_container-detail">
										<div class="user">
											<img src="imgs/thumb02.jpg" alt="user">
										</div>
										<div class="comment">
											<span class="user_id">in0.lee</span>너무귀엽네요 ㅎㅎㅎ맞팔해요~!
											<div class="time">
												2시간 <span class="try_comment">답글 달기</span>
											</div>
											<div class="icon_wrap">
												<div class="more_trigger">
													<div class="sprite_more_icon"></div>
												</div>
												<div>
													<div class="sprite_small_heart_icon_outline"></div>
												</div>
											</div>
										</div>
									</div>

									<div class="user_container-detail">
										<div class="user">
											<img src="imgs/thumb03.jpg" alt="user">
										</div>
										<div class="comment">
											<span class="user_id">ye_solkim</span>강아지 이름이 뭐에요???
											<div class="time">
												2시간 <span class="try_comment">답글 달기</span>
											</div>
											<div class="icon_wrap">
												<div class="more_trigger">
													<div class="sprite_more_icon"></div>
												</div>
												<div>
													<div class="sprite_small_heart_icon_outline"></div>
												</div>
											</div>
										</div>
									</div>

									<div class="user_container-detail">
										<div class="user">
											<img src="imgs/thumb02.jpg" alt="user">
										</div>
										<div class="comment">
											<span class="user_id">in0.lee</span>너무귀엽네요 ㅎㅎㅎ맞팔해요~!
											<div class="time">
												2시간 <span class="try_comment">답글 달기</span>
											</div>
											<div class="icon_wrap">
												<div class="more_trigger">
													<div class="sprite_more_icon"></div>
												</div>
												<div>
													<div class="sprite_small_heart_icon_outline"></div>
												</div>
											</div>
										</div>
									</div>

									<div class="user_container-detail">
										<div class="user">
											<img src="imgs/thumb03.jpg" alt="user">
										</div>
										<div class="comment">
											<span class="user_id">in0.lee</span>너무귀엽네요
											<div class="time">
												2시간 <span class="try_comment">답글 달기</span>
											</div>
											<div class="icon_wrap">
												<div class="more_trigger">
													<div class="sprite_more_icon"></div>
												</div>
												<div>
													<div class="sprite_small_heart_icon_outline"></div>
												</div>
											</div>
										</div>
									</div>

									<div class="user_container-detail">
										<div class="user">
											<img src="imgs/thumb02.jpg" alt="user">
										</div>
										<div class="comment">
											<span class="user_id">in0.lee</span>너무귀엽네요 ㅎㅎㅎ맞팔해요~!
											<div class="time">
												2시간 <span class="try_comment">답글 달기</span>
											</div>
											<div class="icon_wrap">
												<div class="more_trigger">
													<div class="sprite_more_icon"></div>
												</div>
												<div>
													<div class="sprite_small_heart_icon_outline"></div>
												</div>
											</div>
										</div>
									</div>

								</section>


								<div class="bottom_icons">
									<div class="left_icons">
										<div class="heart_btn">
											<div class="sprite_heart_icon_outline" data-name="heartbeat"></div>
										</div>
										<div>
											<div class="sprite_bubble_icon"></div>
										</div>
										<div>
											<div class="sprite_share_icon" data-name="share"></div>
										</div>
									</div>

									<div class="right_icon">
										<div class="sprite_bookmark_outline" data-name="book-mark"></div>
									</div>
								</div>

								<div class="count_likes">
									좋아요 <span class="count">2,351</span> 개
								</div>
								<div class="timer">2시간</div>

								<div class="commit_field">
									<input type="text" placeholder="댓글달기..">

									<div class="upload_btn">게시</div>
								</div>



							</div>


						</article>


					</div>


				</section>

			</div>


			<div class="del_pop">
				<div class="btn_box">
					<div class="del">삭제</div>
					<div class="cancel">취소</div>
				</div>
			</div>

		</section>

		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
		<!--<script src="js/detail.js"></script>-->


	</body>
</html>
