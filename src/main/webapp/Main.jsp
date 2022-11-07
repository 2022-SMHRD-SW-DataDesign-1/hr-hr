<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>Title</title>


<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/new_post.css">
<link rel="stylesheet" href="css/bootstrap.css">


<body>

	<section id="container">

        
		<header id="header">
			<section class="inner">
                
				<h1 class="logo">
					<a href="Main.jsp">
						<div class="sprite_insta_icon"></div>
						<div class="sprite_write_logo"></div>
					</a>
				</h1>
                
				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>
              
				<div class="right_icons">
					
					<a href="Login.jsp"><img src="imgs/로그인.PNG" class="sprite_compass_icon"></a>
					<a href="Profile.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
					<a href="Top10Ranking.jsp"><img src="imgs/랭킹버튼.PNG" class="sprite_user_icon_outline"></a>
					<a href="DM.jsp"> <img src="imgs/채팅.PNG" class="sprite_user_icon_outline"></a>
					
					
				</div>
				

			</section>

		</header>

		<div class="hidden_menu">
		
			<div class="scroll_inner">
				<div class="user">
					<div class="thumb_img">
						<img src="imgs/thumb.jpeg" alt="프로필사진">
					</div>
					<div class="id">여ㅁㄴ라ㅢㅁ느리ㅏㄵ드리ㅏㅈㅂ므ㅜㅏㅣㄹㅇ다</div>
				</div>

				<div class="user">
					<div class="thumb_img">
						<img src="imgs/thumb.jpeg" alt="프로필사진">
					</div>
					<div class="id">kinㅁㄴㄻ누라ㅓㅂㄷㅁ주라ㅓㄷ무리ㅏㅓrr</div>
				</div>
				<div class="user">
					<div class="thumb_img">
						<img src="imgs/thumb.jpeg" alt="프로필사진">
					</div>
					<div class="id">ㄴㅁㄹㄴㅁㄹㄴㄷㅁㅈㄻㅈㄻㄴㅇ</div>
				</div>

			</div>
		</div>

        

		<section id="main_container">
            
			<div class="left_side_box">
                    <div class="ranking_box">
                        <div class="user_profile">
                            <div class="profile_thumb">
                                <img src="imgs/랭킹.PNG" alt="프로필사진">
                            </div>
                            <div class="detail">
                                <div class="id r_text">Ranking</div>
                               
                            </div>
                        </div>
    
                        <article class="month_ranking">
                            <header class="ranking_header">
                                <div>월간랭킹</div>
                                <div class="more"><a href="Top10Ranking.jsp" class="ranking_a">모두 보기</a></div>
                            </header>
    
                            <div class="scroll_inner">
                                <div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/1등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id">user1</div>
                                        
                                    </div>
									
                                </div>
								<div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/2등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id">user2</div>
                                        
                                    </div>
								</div>
								<div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/3등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id">user3</div>
                                        
                                    </div>
									
                                </div>
								
                            </div>
                        </article>
					
						<article class="daily_ranking">
                            <header class="story_header">
                                <div>일간랭킹</div>
                                <div class="more"><a href="Top10Ranking.jsp" class="ranking_a">모두 보기</a></div>
                            </header>
    
                            <div class="scroll_inner">
                                <div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/1등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id">user1</div>
                                        
                                    </div>
									
                                </div>
								<div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/2등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id">user2</div>
                                        
                                    </div>
								</div>
								<div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/3등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id">user3</div>
                                        
                                    </div>
									
                                </div>
								
                            </div>
                        </article>
						</div>
                    </div>
                  
			<div class="inner">
				
				<div class="contents_box">
					
					<article class="contents">
						<header class="top">
							<div class="user_container">
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="프로필이미지">
								</div>
								<div class="user_name">
									<div class="nick_name  user_text">admin</div>
									<div class="country country_text">Seoul, South Korea</div>
								</div>
                                <div class="right_button">
                                    <button type="button" class="btn btn-outline-dark"><a href="reviewboard.jsp">리뷰</a></button>
                                </div>
							</div>
						</header>

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
                    
					<article class="contents">
                       
						<header class="top">
							<div class="user_container">
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="프로필이미지">
								</div>
								<div class="user_name">
									<div class="nick_name user_text">ㅋㅋ~닉네임인데~ㅋㅋ</div>
									<div class="country country_text">Seoul, South Korea</div>
								</div>

							</div>

							<div class="sprite_more_icon" data-name="more">
								<div class="dropdown">
									<button class="btn btn-secondary dropdown-toggle btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
									 ...
									</button>
									<ul class="dropdown-menu">
									  <li><a class="dropdown-item" href="#">수정</a></li>
									  <li><a class="dropdown-item" href="#">삭제</a></li>
									  
									</ul>
								  </div>
							</div>
						</header>

						<div class="img_section">
							<div class="trans_inner">
								<div>
									<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
										<div class="carousel-indicators">
										  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
										  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
										  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
										</div>
										<div class="carousel-inner">
										  <div class="carousel-item active">
											<!-- 여기에 사진넣기 --> 	
											<img src="imgs/img_section/img01.jpg" alt="visual01">
									  
										  </div>
										  <div class="carousel-item">
											<!-- 여기에 사진넣기 --> 				
											<img src="imgs/3등.PNG" alt="visual01"> 								  
										  </div>	
											<div class="carousel-item">
											<!-- 여기에 사진넣기 --> 	
											<img src="imgs/img_section/img01.jpg" alt="visual01"> 
									  
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
						
						<div class="bottom_icons">
							<div class="left_icons">
								<div class="heart_btn">
									<div class="sprite_heart_icon_outline" name="39"
										data-name="heartbeat"></div>
								</div>
								<div class="sprite_bubble_icon"></div>
								<div class="sprite_share_icon" data-name="share"></div>
							</div>
							<div class="right_icon">
								<div class="sprite_bookmark_outline" data-name="bookmark"></div>
							</div>
						</div>

						<div class="likes m_text">
							좋아요 <span id="like-count-39">2,346</span> <span
								id="bookmark-count-39"></span> 개
						</div>

						<div class="comment_container">
							<div class="comment" id="comments">
								<ul class="comment-detail" >
									<li class="nick_name m_text" name="username">수리남 박상현</li>
									<li name="comment_data">강아지가 눈을 왜 그렇게 뜨죠?</li>
								</ul>
								
							</div>
							<div class="small_heart">
								<div class="sprite_small_heart_icon_outline"></div>
							</div>
						</div>

						<div class="comment_field" id="add-comment-post37">
							<form action="#" id="commentform">
								<input type="text" name="username" placeholder="username" />
								<input type="text" name="comment_text" placeholder="댓글달기...">
								<button type="submit"class="upload_btn m_text" data-name="comment">게시</button>
							</form>
						</div>
					</article>

				</div>
				<input type="hidden" id="page" value="1">

				<div class="side_box">
					<button type="button" class="btn btn-primary btn btn-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
						+ 게시물 등록
					  </button>
					  
					  <!-- Modal -->
					  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
						  <div class="modal-content">
							<div class="modal-header">
							  <h1 class="modal-title fs-5" id="staticBackdropLabel">게시물 등록</h1>
							  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="post_form_container">
									<form action="#" class="post_form">
										<div class="title">
											NEW POST
										</div>
										<div class="preview">
											<div class="upload">
												<div class="post_btn">
													<div class="plus_icon">
														<span></span>
														<span></span>
													</div>
													<p>포스트 이미지 추가</p>
													<canvas id="imageCanvas"></canvas>
													<!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
												</div>
											</div>
										</div>
										<p>
											<input type="file" name="photo" id="id_photo" required="required">
										</p>
										<p>
											<textarea name="content" id="text_field" cols="50" rows="5" placeholder="140자 까지 등록 가능합니다. #태그명 을 통해서 검색 태그를 등록할 수 있습니다.
						예시 : I # love # insta!"></textarea>
						
										</p>
										<input class="submit_btn" type="submit" value="저장">
									</form>
						
								</div>
							</div>
							<div class="modal-footer">
							  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							</div>
						  </div>
						</div>
					  </div>

					<article class="story">
						<header class="story_header">
							<div>스토리</div>
							<div class="more">모두 보기</div>
						</header>

						<div class="scroll_inner">
							<div class="thumb_user">
								<div class="profile_thumb">
									<img src="imgs/thumb02.jpg" alt="프로필사진">
								</div>
								<div class="detail">
									<div class="id">그르르르</div>
									<div class="time">1시간 전</div>
								</div>
							</div>
						</div>
					</article>

					<article class="recommend">
						<header class="reco_header">
							<div>회원님을 위한 추천</div>
							<div class="more">모두 보기</div>
						</header>

						<div class="thumb_user">
							<div class="profile_thumb">
								<img src="imgs/thumb02.jpg" alt="프로필사진">
							</div>
							<div class="detail">
								<div class="id">그르르</div>
								<div class="time">1시간 전</div>
							</div>
						</div>
				</article>
				</div>


			</div>
		</section>



	</section>

	<script src="./js/chat.js"></script>
	<script src="js/comment.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>