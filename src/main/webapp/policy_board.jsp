<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.PolicyDAO"%>
<%@page import="com.smhrd.model.PolicyDTO"%>
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


		<title>Peasy</title>
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/detail-page.css">
		<link rel="shortcut icon" href="imgs/instagram.png">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="shortcut icon" href="#"><!-- 우리 로고 넣어야함 -->
		
        
        

		
	</head>

	<body>
		
		<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		int p_num = Integer.parseInt(request.getParameter("p_num")); //p_num 가지고 옴
		PolicyDTO policy = new PolicyDAO().showDetail(p_num);
		
		//PolicyDTO policy = pdao.showDetail(num); // 기능쓰는 곳에서 showdetail기능을 사용해서 p_num에 해당하는 pdto(젖체)을 가지고 왔음 
		//BigDecimal num = new BigDecimal(p_num); // p_num을 bigDecimal로 바꿔줬음 
		
		//PolicyDAO pdao = new PolicyDAO(); // 기능을 쓰기 위해 생성
		
		
		%> 
		

		<section id="container">

			<!-- 상단바 -->
			<header id="header">
				<section class="h_inner">

					<h1 class="logo">
					<a href="Main.jsp">
						<img src="imgs/로고.JPG">
						
					</a>
				</h1>

					<div class="search_field">
						<input type="text" placeholder="검색" tabindex="0">

						<div class="fake_field">
							<span class=sprite_small_search_icon></span> <span>검색</span>
						</div>
					</div>


					<div class="right_icons">
 						<a href="ProfileAll.jsp?m_id-<%=info.getM_Id()%>"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
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
					<!-- 알람 끝 -->
					</div>
				</section>
			</header>


			<div id="main_container">

				<section class="b_inner">
				
					<div class="contents_box">
						<!-- 게시물영역 -->
						<article class="contents cont01">
							<!-- 게시물 상단 영역 -->
							<div class="user_container">
							<!-- 게시물 유저이미지 -->
								<div class="profile_img"><!--  -->
									<img src="<%=policy.getP_filename() %>" alt="">
								</div>
								<!-- 게시물 유저 정보  -->
								<div class="user_name">
									<div class="py_name"><%=policy.getP_title() %></div>
                                    
								</div>
								<!-- 게시물 오른쪽 버튼영역 -->
                                <div class="right_button">
                                <!-- 리뷰버튼 -->
                                    <button type="button" class="btn btn-outline-dark"><a href="reviewboard.jsp?p_num=<%=request.getParameter("p_num")%>">리뷰</a></button>
                                </div>
							</div>
							<!-- 게시물 이미지 영역 --> <!-- //사진 넣어줘야한단 말이야 -->
							<div class="img_section">
								<div class="trans_inner">
									<div>
									
								 	<!-- 이미지 넘기기 -->
										<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
										<!-- 이미지 수정하기 -->
                                         <% String file = policy.getP_filename();
                                         	String[] files = file.split(",");
                                         	int count = 0;
                                         %>
                                            
                                             <div class="carousel-indicators">
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
                                           		<%if(files.length>1){ %>
                                           		<%for(int i = 0; i<files.length-1; i++){ %>
                                           			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=count+1 %>" aria-label="Slide <%=count+2 %>" class=""></button>
                                           		<% count++; %>
                                           		<%} %>
                                           		<%} %>
                                           </div>
                                           <!-- 이미지 넣는 영역 -->
                                           
                                              <div class="carousel-inner">
                                              <!-- 첫번째 사진 -->
                                              <div class="carousel-item active">
                                                <!-- 여기에 사진넣기 --> 	
                                                 <img src="./file/<%=files[0]%>" > 
                                              </div>
												<%if(files.length>1){ %>
													<%for(int i = 1; i<files.length; i++){ %>
													<div class="carousel-item">
		                                               <img src="./file/<%=files[i] %>">
		                                             </div>
												<%} %>
											<%} %>

                                            </div>
                                             <!-- 이미지 오른쪽으로 넘기기 -->
                                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                              <span class="visually-hidden">Previous</span>
                                            </button>
                                            <!-- 이미지 왼쪽으로 넘기기 -->
                                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                              <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                              <span class="visually-hidden">Next</span>
                                            </button>
                                        
                                            
                                          
                                          
                                            </div>
									</div>
								</div>
							</div> 
							<!-- 게시물 하단상세 -->
							<div class="detail--right_box">


								<header class="top">
									<!-- 유저 조 -->
									<div class="admin_container">
										<div class="comment">
											<span class="user_id"><%=policy.getAdmin_id() %></span>
											<div>
											<%=policy.getP_content() %>
											</div>
											<div class="time"><%=policy.getP_date() %></div>
										</div>
									</div>
									
								</header>

						

								<!-- 게시글 하단 버튼 영역 -->
								<div class="bottom_icons">
								<!-- 왼쪽하단 영역 -->
									<div class="left_icons">
									<!-- 좋아요 버튼 -->
										<div class="heart_btn">
									<div class="sprite_heart_icon_outline" data-name="heartbeat">
										<button class="heart_button"><img src="imgs/3.PNG"></button>
									</div>
								</div>
								<!-- 댓글 버튼 -->
								<div class="sprite_bubble_icon"></div>
									</div>
									<!-- 게시글 스크랩버튼 -->
									<div class="right_icon">
									
									</div>
								</div>
									<!-- 게시글 좋아요수 표시 -->
								<div class="count_likes">
									좋아요 <span class="count">2,351</span> 개
								</div>
								<div class="timer">2시간</div>
						
							</div>


						</article>


					</div>


				</section>

			</div>


		</section>

		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
		<!--<script src="js/detail.js"></script>-->


	</body>
</html>
