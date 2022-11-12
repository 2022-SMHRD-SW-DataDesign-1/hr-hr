<%@page import="com.smhrd.model.ReviewLikeDTO"%>
<%@page import="com.smhrd.model.ReviewLikeDAO"%>
<%@page import="com.smhrd.model.ReviewCommentDTO"%>
<%@page import="com.smhrd.model.ReviewCommentDAO"%>
<%@page import="com.smhrd.model.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ReviewDAO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.model.MemberDTO"%>
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
		<link rel="stylesheet" href="css/new_post.css">
		<link rel="stylesheet" href="css/bootstrap.css">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">

	</head>

	<body>


		<%MemberDTO info = (MemberDTO) session.getAttribute("info");%>
		
		<%
		ReviewDAO r_dao = new ReviewDAO();
		
		// 리뷰글 번호
		BigDecimal r_num = new BigDecimal(Integer.parseInt(request.getParameter("r_num")));
		// 리뷰글이 등록된 정책글 번호
		BigDecimal p_num = new BigDecimal(Integer.parseInt(request.getParameter("p_num")));
			
		ReviewDTO r_detail = r_dao.reviewDetailShow(r_num);
		
		// 리뷰글의 댓글목록 가져오기
		ReviewCommentDAO r_c_dao = new ReviewCommentDAO();
		ArrayList<ReviewCommentDTO> r_c_List =r_c_dao.showReviewComment(r_num);
		
		
		%>
		



		<section id="container">


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
						<a href="Login.jsp"><img src="imgs/로그인.PNG" class="sprite_compass_icon"></a>
						<a href="profileAll.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
					</div>
				</section>
			</header>


			<div id="main_container">
				<!-- 게시글 영역 -->
				<section class="b_inner">

					<div class="contents_box">

						<article class="contents cont01">
							<!-- 게시글 상단 -->
							<div class="user_container">
							
							<!-- 유저 이미지 -->
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="">
								</div>
								
								
								<!-- 유저 정보 -->
								<div class="user_name">
									<div class="nick_name"><%=r_detail.getR_title() %></div>
								</div>
                              	<div class="sprite_more_icon" >
								
							</div>
							</div>
							
							<!-- 게시글 이미지영역 -->
							<div class="img_section">
								<div class="trans_inner">
									<div>
									<!-- 이미지 넘기기 -->
										<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                                           <!-- 이미지 수정하기 -->
                                           <%
                                            String file = r_detail.getR_file();
                                            String [] files = file.split(",");
                                            int count = 0;
                                            %>
                                           
                                            <div class="carousel-indicators">
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
                                              <%if(files.length >1){ %>
                                            <%for(int i = 0;i < files.length-1;i++){ %>
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=count+1 %>" aria-label="Slide <%=count+2 %>" class=""></button>
                                              <%count++; %>
                                             <%} %>
                                             <%} %>
                                            </div>
                                            <!-- 이미지 넣는 영역 -->
                                            
                                            
                                            
                                            <div class="carousel-inner">
                                            <!-- 첫번쨰 사진 -->
                                              <div class="carousel-item active">
                                                <img src="./file/<%=files[0] %>">
                                              </div>
                                              
                                            <!-- 두번쨰 사진이 있다면 이후부터 출력 -->
                                            <%if(files.length >1){ %>
                                            	<%for (int i = 1; i < files.length; i ++){ %>
		                                             <div class="carousel-item">
		                                               <img src="./file/<%=files[i] %>">
		                                             </div>
                                           		<%} %>
                                            <%} %>
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

								<!-- 게시글 하단 상세 -->
							<div class="detail--right_box">
							

								<header class="top">
									<!-- 유저 정보 -->
									<div class="admin_container">
										<div class="comment">
										<!-- 유저 이름  -->
											<span class="user_id"><%=r_detail.getM_id() %></span><%=r_detail.getR_content() %>
											<div class="tr_time"><%=r_detail.getR_date()%></div>
										</div>
									</div>
									
								</header>
								<%if(info.getM_Id().equals(r_detail.getM_id())){%>
								<div class="dropdown">
									<button class="btn btn-secondary dropdown-toggle btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
									 ...
									</button>
									<ul class="dropdown-menu">
									  <li><a class="dropdown-item" onclick="deleteReview()">삭제</a></li>
									</ul>
								  </div>
								 <%} %>
							<!-- 댓글 스크롤 -->
								<section class="scroll_section" id="reviewComments">
								
								<%if(r_c_List != null){ %>
								<%for(ReviewCommentDTO r_c_dto : r_c_List){ %>
								
											<!-- 댓글 영역 -->
									<div class="user_container-detail" >
									<!-- 댓글 유저 이미지 -->
										<div class="user">
											img
										</div>
										
										<!-- 댓글 내용 -->
										<div class="comment">
											<span class="user_id"><%=r_c_dto.getM_nickname()%></span><%=r_c_dto.getR_c_content() %>
										</div>
										
									</div>
									
							
								<%} %>
								<%} %>

								</section>



								<!-- 게시글 하단 버튼  -->
								<div class="bottom_icons">
								
								
								
								<!-- 하단 왼쪽 -->
									<div class="left_icons">
									
							<%
						if(info != null){
							// 리뷰 글 좋아요 여부 확인
							ReviewLikeDAO r_l_dao = new ReviewLikeDAO();
							ReviewLikeDTO r_l_dto = new ReviewLikeDTO(info.getM_Id(),r_num);
							int isLikeResult = r_l_dao.reviewIsLike(r_l_dto);%>
									<div class="heart_btn">
										<div class="sprite_heart_icon_outline" data-name="heartbeat">
							<%if(isLikeResult>0){ %>
											<button id="reviewLikes" class="heart_button" onclick="reviewLike()"><img class="heart" alt="유용해요해제" src="imgs/좋아.JPG"></button>
							<%}else{ %>	
											<button id="reviewLikes" class="heart_button" onclick="reviewLike()"><img class="heart" alt="유용해요등록" src="imgs/몰라.JPG"></button>
							<%} %>										
										</div>
									</div>
																		
						<%} %>										
								
								<!-- 댓글 버튼 -->
								<div class="sprite_bubble_icon"></div>
									</div>
								
								
								
								<!-- 좋아요수 표시 -->
								<div class="count_likes">
									좋아요 <span class="count" id="count"><%=r_detail.getR_like() %></span> 개
								</div>
								

							</div>
								
								<!-- 댓글 입력란  -->
								<div class="commit_field r_commet_area">
									<div>
									<input type="text" placeholder="comment~" id= "reviewComment">
									</div>
									<!--
									<div type="button" class="please" onclick="writeReviewComment()">등록</div>
									-->
									<input type="button" class="r_comment" onclick="writeReviewComment()" value="댓글작성">
								</div>
								
						</article>


					</div>


				</section>

			</div>

		</section>

	<script type="text/javascript">
	// 댓글 작성 ajax
			function writeReviewComment() {
				let r_c_content = $("#reviewComment").val();
				let m_id = '<%=info.getM_Id()%>';
				let r_num = <%=request.getParameter("r_num")%>;
				let m_nickname = '<%=info.getM_Nickname()%>';
				
				console.log("내용"+r_c_content);
				console.log("아이디"+m_id);
				console.log("리뷰번호"+r_num);
				console.log("닉네임"+m_nickname);
				
				$.ajax({
					url : "ReviewCommentService",
					data : {"m_id" : m_id,
							"r_c_content" : r_c_content,
							"m_nickname" : m_nickname,
							"r_num" : r_num
							},
					type : 'get', 
					success : function(data) {
						//1. 쿼리 셀렉터로 가져와서 innerHTML로 댓글을 그냥 추가해줘
						let reviewComments = document.getElementById('reviewComments');
						let reviewComment = document.getElementById('reviewComment');
						reviewComments.innerHTML += 
							`<div class="user_container-detail" >
							<div class="user">
								img
							</div>
							<div class="comment">
								<span class="user_id"><%=info.getM_Nickname()%>
								</span>${reviewComment.value}
							</div>
							
						</div>`;
						reviewComment.value = null;
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
			let like_count = <%=r_detail.getR_like() %>; 
			function reviewLike() {
				let is_Like;
				let m_id = '<%=info.getM_Id()%>';
				let r_num = <%=request.getParameter("r_num")%>;
				let writer = '<%=r_detail.getM_id()%>';
				
				let usefulBtn = document.getElementById("reviewLikes").innerHTML;
				console.log(usefulBtn);
				console.log(m_id);
				console.log(r_num);
				
				if(usefulBtn== '<img class="heart" alt="유용해요해제" src="imgs/좋아.JPG">'){
					document.getElementById("reviewLikes").innerHTML ='<img class="heart" alt="유용해요등록" src="imgs/몰라.JPG">';
					is_Like = 1;
				}else{
					document.getElementById("reviewLikes").innerHTML ='<img class="heart" alt="유용해요해제" src="imgs/좋아.JPG">';
					is_Like = 0;
				}
				
				console.log(is_Like);
				
				$.ajax({
					url : "ReviewLikeService",
					data : {"m_id" : m_id,
							"r_num" : r_num,
							"is_Like" : is_Like,
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
	
	<script type="text/javascript">
	// 삭제 버튼
	function deleteReview(){
		let m_id = '<%=info.getM_Id()%>';
		let r_num = <%=request.getParameter("r_num")%>;
		let p_num = <%=request.getParameter("p_num")%>;
		
		let delCheck = confirm("데이터 복구는 없다. 삭제 ㄱ?");
		console.log("아이디"+m_id);
		console.log("리뷰번호"+r_num);
		console.log("정책번호"+p_num);
		console.log("확인"+delCheck);
		console.log(typeof delCheck);
		
		$.ajax({
			url : "DeleteReviewService",
			data : {"m_id" : m_id,
					"r_num" : r_num,
					"p_num" : p_num,
					"delCheck" : delCheck
					},
			type : 'get', 
			success : function(data) {
				console.log("통신은 된다?")
				location.replace("./reviewboard.jsp?p_num="+<%=request.getParameter("p_num")%>);
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
		<!--<script src="js/detail.js"></script>-->


	</body>


    </html>