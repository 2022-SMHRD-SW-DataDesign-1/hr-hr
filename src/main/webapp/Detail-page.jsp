<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.CommentDTO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>

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
		<!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
		<meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
		<meta property="og:type" content="website">
		<meta property="og:title" content="instagram">
		<meta property="og:description" content="instagram clone">
		<meta property="og:image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
		
		<!-- Twitter Meta Tags / 트위터 -->
		<meta name="twitter:card" content="instagram clone">
		<meta name="twitter:title" content="instagram">
		<meta name="twitter:description" content="instagram clone">
		<meta name="twitter:image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

		<!-- Google / Search Engine Tags / 구글 검색 엔진 -->
		<meta itemprop="name" content="instagram">
		<meta itemprop="description" content="instagram clone">
		<meta itemprop="image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


		<title>instagram</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/detail-page.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		
		<link rel="shortcut icon" href="#"><!-- 우리 로고 넣어야함 -->

  		<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
		
	</head>

	<body>

		<%
			//int num = Integer.parseInt(request.getParameter("b_num"));
			BoardDTO board = new BoardDAO().showDetail(4);
			
			//int cmt = Integer.parseInt(request.getParameter("b_num"));
			//BigDecimal b_num_cmt = new BigDecimal(cmt);
			int num = 4;
			BigDecimal bignum = new BigDecimal(num);
			ArrayList<CommentDTO>  cmtList = new CommentDAO().showComment(bignum);
		%>
		<section id="container">

			<!-- 머리글 -->
			<header id="header">
                <section class="h_inner">

					<!-- 로고 -->
                    <h1 class="logo">
                        <a href="Main.jsp">
                            <div class="sprite_insta_icon"></div>
                            <div>
                                <div class="sprite_write_logo"></div>
                            </div>
                        </a>
                    </h1>
					<!-- 검색바 -->
                    <div class="search_field">
                        <input type="text" placeholder="검색" tabindex="search_field">

                        <div class="fake_field">
                            <span class=sprite_small_search_icon></span>
                            <span>검색</span>
                        </div>
                    </div>

					<!-- 오른쪽 메뉴 아이콘 -->
                    <div class="right_icons">
                        <a href="Profile.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
                        <a href="Top10Ranking.jsp"><img src="imgs/랭킹버튼.PNG" class="sprite_user_icon_outline"></a>
                        <a href="DM.jsp"> <img src="imgs/채팅.PNG" class="sprite_user_icon_outline"></a>
                        <!-- 알람버튼 -->
					<button type="button" class="btn btn-primary position-relative" id="liveToastBtn">
						<span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
							1
						</span>
						<img src="imgs/알람.PNG">
					</button>
					<div class="toast-container position-static">
						<div class="toast-container position-fixed bottom-0 end-0 p-3">
						<div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
							<div class="toast-header">
							<img src="imgs/알람.PNG" class="rounded me-2" alt="...">
							<strong class="me-auto">알람내역</strong>
							<small>11분전</small>
							<button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
							</div>
							<div class="toast-body">
							메세지 한건이 도착했습니다.
							</div>
						</div>
						</div>
					</div>
                        
                        
                        
                    </div>
                </section>
            </header>


			<div id="main_container">
				<!-- 게시물 영역  -->
				
				<section class="b_inner">

					<div class="contents_box">

						<article class="contents cont01">
							<!-- 게시물 상단 영역 -->
							<div class="user_container">
							<!-- 게시물 유저 이미지 -->
								<div class="profile_img">
									<img src="<%=board.getB_filename() %>" alt="">
									
								</div>
								<!-- 유저 이름 및 정보 -->
								<div class="user_name">
									<div class="nick_name"><%=board.getB_writer() %></div>
								</div>
							</div>
							<!-- 게시물 이미지 영역 -->
							<div class="img_section">
								<div class="trans_inner">
									<div>
										<img src="<%=board.getB_filename() %>" alt="">
									</div>
								</div>
							</div>

							<!-- 게시물 하단 상세영역  -->
							<div class="detail--right_box">


								<header class="top">

									<div class="admin_container">
										<div class="comment">
										<!-- 게시한 유저 이름 -->
											<span class="user_id"><%=board.getB_writer() %></span>
											<div>
											<%=board.getB_content() %>
											</div>
											<!-- 게시 시간 -->
											<div class="time"><%=board.getB_date() %></div>
										</div>
									</div>
									
								</header>

								

								<!-- 게시글 하단 버튼  -->
								<div class="bottom_icons">
									<!-- 하단 왼쪽버튼 -->
									<div class="left_icons">
									<!-- 게시글 좋아요버튼 -->
										<div class="heart_btn">
											<div class="sprite_heart_icon_outline" data-name="heartbeat">
												<button class="heart_button"><img src="imgs/3.PNG"></button>
											</div>
										</div>
								<!-- 댓글 버튼 -->
								<div class ="thumbs">따봉</div>
								<div class="sprite_bubble_icon"></div>
									</div>
									<!-- 게시글 스크랩 버튼 -->
									<div class="right_icon">
										<div class="sprite_bookmark_outline" data-name="book-mark"></div>
									</div>
								</div>
								<!-- 게시글 좋아요수 표시 -->
								<div class="count_likes">좋아요 
								<span class="count">2,351</span> 개
								<div class="timer">2시간</div>
								</div>
								<!-- 댓글 스크롤  -->
								<section class="scroll_section">




								<!-- 댓글 두개만 보이고 나머지는 더보기로 넘겨야함 -->
									
									<%if(cmtList != null){ %>
									<!-- for(i = 0; i<1; i++){ -->
									<%for(CommentDTO cmt_dto : cmtList){ %>
									<!-- 댓글 영역 -->
									<div class="user_container-detail">
										<div class="user">
										<!-- 댓글게시 유저 이미지 -->
										<!-- 프로필 사진도 필요 -->
											<img src="imgs/thumb02.jpg" alt="user">
										</div>
										<!-- 댓글 내용 -->
										<div class="comment">
											<span class="user_id"><%=cmt_dto.getCmt_id() %></span>
											<%=cmt_dto.getCmt_content() %>
											
											<button class="cmtlike">♡</button>
										</div>
									</div>
									<%} %>
									
									<%} %>
									
									<%-- <%if(cmtList != null){ %>
									<%for(CommentDTO cmt_dto : cmtList){ %>
									<!-- 댓글 영역 -->
									<div class="user_container-detail">
										<div class="user">
										<!-- 댓글게시 유저 이미지 -->
											<img src="imgs/thumb02.jpg" alt="user">
										</div>
										<!-- 댓글 내용 -->
										<div class="comment">
											<span class="user_id"><%=cmt_dto.getCmt_id() %></span>
											<%=cmt_dto.getCmt_content() %>
											
											<button class="cmtlike">♡</button>
										</div>
									</div>
									<%} %>
									
									<%} %> --%>
									
								</section>
								<!-- 댓글창 끝나는 곳 -->
								
								
								
								<!-- 댓글 입력란 -->
								<div class="comment_field" id="add-comment-post37">
								<form action="CommentService?b_num=<%=board.getB_num()%>" method="post" id="commentform">
								<input type="text" name="c_content" placeholder="댓글달기...">
								<button type="submit" class="upload_btn user_text">댓글등록</button>
								</form>
							</div>



							</div>


						</article>


					</div>


				</section>

			</div>

		</section>

	
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<!--<script src="js/detail.js"></script>-->
		
		<script>
		
		</script>

	</body>

	</html>