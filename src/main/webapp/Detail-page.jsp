<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.LikesDAO"%>
<%@page import="com.smhrd.model.LikesDTO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
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



		<title>Peasy</title>
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
			MemberDTO info = (MemberDTO) session.getAttribute("info");
			int num = Integer.parseInt(request.getParameter("b_num"));
			
			BoardDTO board = new BoardDAO().showDetail(num);
			
			int cmt = Integer.parseInt(request.getParameter("b_num"));
			BigDecimal b_num_cmt = new BigDecimal(cmt);
			BigDecimal bignum = new BigDecimal(num);//test코드 메인수정후 삭제
			ArrayList<CommentDTO>  cmtList = new CommentDAO().showComment(bignum);
			LikesDTO l_dto = new LikesDTO(); 
			LikesDAO l_dao = new LikesDAO();
		%>
		<section id="container">

			<!-- 머리글 -->
			<header id="header">
                <section class="h_inner">

					<!-- 로고 -->
                    <h1 class="logo">
                        <a href="Main.jsp">
       						<img src="imgs/로고.JPG">
                       
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
									<img src="/imgs/<%=info.getT_pic() %>" alt="">
								</div>
								<!-- 유저 이름 및 정보 -->
								<div class="user_name">
									<div class="nick_name"><%=info.getM_Id() %></div>
								</div>
							</div>
							<%int indiID= 0; %>
							<%	String[] b_files = board.getB_filename().split(",");%>
							<!-- 게시물 이미지 영역 -->
							<div class="img_section">
								
								<div class="trans_inner">
								<div>
								<!-- 캐러셀 인디케이터 깔아놓기 -->
								<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
								<div class="carousel-indicators">
                                <%for(int i =0; i<b_files.length; i++){ %>
                                <% if(i==0) {%>
							 	<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i %>" class="active" aria-label="Slide<%=i+1 %>" aria-current="true"></button>
								<%}else{%>
								 <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i %>"  aria-label="Slide<%=i+1 %>" aria-current="true"></button>
								<%} %>
                                <%} %>
                                </div>
                                <!-- 이미지 등록하기 -->
                                <div class="carousel-inner">
                                    <%int b_index=0; %>
                                    <%for(String temp : b_files){%>
                                      <%if(b_index==0){ %>
                                      <div class="carousel-item active">
                                        <img src="file/<%=temp%>" >                                          
                                      </div>
                                      <%}else{ %>
                                      <div class="carousel-item">
                                        <img src="file/<%=temp%>">                                          
                                      </div>
                                      <%} %>
                                      <%b_index++; %>
                                    <%}%>
                                    <!-- 이미지 왼쪽으로 넘기기-->
                                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                      <span class="visually-hidden">Previous</span>
                                    </button>
                                    <!-- 이미지 오른쪽으로 넘기기-->
                                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                      <span class="visually-hidden">Next</span>
                                    </button>
                                  </div>
								</div>
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
											<div class="t_timer">    <%=board.getB_date() %></div>
											<!-- 게시글 수정 삭제 영역  -->
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
										<%l_dto = new LikesDTO(info.getM_Id(),board.getB_num()); 
										  int isLikeResult = l_dao.isLiked(l_dto);%>
											<%if(isLikeResult>0){ %>
												<button id="likes" class="heart_button" onclick="likes()"><img class="heart" alt="유용해요해제" src="imgs/좋아.JPG"></button>
											<%}else{ %>	
												<button id="likes" class="heart_button" onclick="likes()"><img class="heart" alt="유용해요등록" src="imgs/몰라.JPG"></button>
											<%} %>				
										</div>
									</div>
								<!-- 댓글 버튼 -->
									</div>
								</div>
								<!-- 게시글 좋아요수 표시 -->
								<div class="count_likes">좋아요 
									<span class="count" id="count"><%=board.getB_likes() %></span> 개
								</div>
								<section class="scroll_section">

									
									<%MemberDAO mdao = new MemberDAO(); %>
									<%if(cmtList != null){ %>
									<%for(CommentDTO cmt_dto : cmtList){ %>
									<!-- 댓글 영역 -->
									<div  id="Comments">
										<div class="user">
										<!-- 댓글게시 유저 이미지 -->
											<img src="file/<%=mdao.information(cmt_dto.getCmt_id()).getT_pic()%>" alt="user" style= "width: 50px;">
										</div>
										<!-- 댓글 내용 -->
										<div class="comment">
											<span class="user_id"><%=cmt_dto.getCmt_id() %></span>
											<%=cmt_dto.getCmt_content() %>
										
										</div>
									</div>
									<%} %>
									
									<%} %>
									
								</section>
								<!-- 댓글창 끝나는 곳 -->
								
								
								
								<!-- 댓글 입력란 -->
							<div class="comment_field">
									<input type="text" id="Comment" name="c_content" placeholder="댓글달기..." >
									<button type="button" class="upload_btn user_text" onclick="writeComment()">댓글등록</button>
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
		function writeComment() {
			let c_content = $("#Comment").val();
			let m_id = '<%=info.getM_Id()%>';
			let b_num = <%=request.getParameter("b_num")%>;
			let m_nickname = '<%=info.getM_Nickname()%>';
			
			console.log("내용"+c_content);
			console.log("아이디"+m_id);
			console.log("게시물번호"+b_num);
			console.log("닉네임"+m_nickname);
			
			$.ajax({
				url : "CommentService",
				data : {"m_id" : m_id,
						"c_content" : c_content,
						"m_nickname" : m_nickname,
						"b_num" : b_num
						},
				type : 'get', 
				success : function(data) {
					//1. 쿼리 셀렉터로 가져와서 innerHTML로 댓글을 그냥 추가해줘
					let Comments = document.getElementById('Comments');
					let Comment = document.getElementById('Comment');
					Comments.innerHTML += 
						`<div class="user_container-detail" >
						<div class="user">
							<%=info.getT_pic() %>
						</div>
						<div class="Comment">
							<span class="user_id"><%=info.getM_Nickname()%>
							</span>${Comment.value}
						</div>
						
					</div>`;
					Comment.value = null;
					//2. 댓글 작성창 쿼"리셀렉터로 다시가져와서.value=""
				},
				error : function() {
					console.log("조샀다 !");
				}
			})
		}
		</script>
		<script type="text/javascript">
	// 리뷰 좋아요 
			let like_count = <%=board.getB_likes() %>; 
			function likes() {
				let is_Like;
				let m_id = <%=info.getM_Id()%>;
				let b_num = <%=request.getParameter("b_num")%>;
				let writer = <%=board.getB_writer()%>;
				let usefulBtn = document.getElementById("likes").innerHTML;
				console.log(usefulBtn);
				console.log(m_id);
				console.log(b_num);
				
				if(usefulBtn== '<img class="heart" alt="유용해요해제" src="imgs/좋아.JPG">'){
					document.getElementById("likes").innerHTML ='<img class="heart" alt="유용해요등록" src="imgs/몰라.JPG">';
					is_Like = 1;
				}else{
					document.getElementById("likes").innerHTML ='<img class="heart" alt="유용해요해제" src="imgs/좋아.JPG">';
					is_Like = 0;
				}
				
				console.log(is_Like);
				
				$.ajax({
					url : "LikesPlusService",
					data : {"m_id" : m_id,
							"b_num" : b_num,
							"is_liked" : is_Like,
							"writer" : writer
							},
					type : 'get', 
					success : function(data) {
						console.log(typeof data);
						if(data == 'true'){
							like_count += 1;
						}else{
							
							like_count -= 1;
						}
						$('#count').text(like_count);
					},
					error : function() {
						console.log("조샀다 !");
					}
				})
			}	
			
	</script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	</body>

	</html>