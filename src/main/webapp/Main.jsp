<%@page import="com.smhrd.model.PolicyLikesDTO"%>
<%@page import="com.smhrd.model.PolicyLikesDAO"%>
<%@page import="com.smhrd.model.LikesDTO"%>
<%@page import="com.smhrd.model.LikesDAO"%>
<%@page import="com.smhrd.model.PolicyDAO"%>
<%@page import="com.smhrd.model.PolicyDTO"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.model.CommentDTO"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.FollowDAO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
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

	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>



	<section id="container">

        <!-- 상단바-->
		<header id="header">
			<section class="inner">
                
				<h1 class="logo">
					<a href="Main.jsp">
						<img src="imgs/로고.JPG"/>
						
					</a>
				</h1>
                <!-- 검색바 -->
				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>
              <!-- 오른쪽 메뉴아이콘 -->
				<div class="right_icons">
					
					<a href="Login.jsp"><img src="imgs/로그인.PNG" class="sprite_compass_icon"></a>
					<a href="profileAll.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
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


        

		<section id="main_container">
            <!--왼쪽 영역 -->
			<div class="left_side_box">
				<!--랭킹 영역 -->
                    <div class="ranking_box">
                        <div class="user_profile">
                        <!-- 랭킹 왕관이미지 -->
                            <div class="profile_thumb">
                                <img src="imgs/랭킹.PNG" alt="프로필사진">
                            </div>
                            <!-- 랭킹 글자 -->
                            <div class="detail">
                                <div class="id r_text">Ranking</div>
                               
                            </div>
                        </div>
    					<!-- 월간랭킹 -->
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
						<!-- 일간 랭킹-->
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
				<!-- 가운대 영역-->
				<div class="contents_box">
					<!-- 정책 영역 -->
					<article class="contents">
			
					<%	if(info != null){ %>
							<%
							
							//댓글 dao
							
							//게시판 dao
							int count = 0;

							PolicyDAO p_dao = new PolicyDAO();
							ArrayList<PolicyDTO> p_list = p_dao.showPolicy();
							double min = 0;
							double max = p_list.size();
							int ranp = (int) ((Math.random() * (max - min)) + min);
							PolicyDTO ranPdto= p_list.get(ranp);
							
							
							PolicyLikesDAO pl_dao = new PolicyLikesDAO();
							PolicyLikesDTO pl_dto;
							
							%>
							
							
							<%for(PolicyDTO p_dto : p_list){%>
							<%String[] p_files = ranPdto.getP_filename().split(","); %>
						<header class="top">
							<div class="user_container">
							<!-- content top img로 접근 게시물 상단 유저이미지 -->
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="프로필이미지">
								</div>
								<!-- content top user_name으로 접근 게시물 상단 유저닉네임 -->
								<div class="user_name">
									<div class="nick_name  user_text"><%= ranPdto.getAdmin_id()%></div>
									<!-- 유저 위치 정보-->
									<div class="top_time">
										<div class="comment">
											<div class="t_timer"><%=ranPdto.getP_date() %></div>
										</div>
									</div>
								</div>
								<!-- 리뷰 버튼영역-->
                                <div class="right_button">
                                    <button type="button" class="btn btn-outline-dark"><a href="reviewboard.jsp?p_num=<%=p_dto.getP_num()%>">리뷰</a></button>
                                </div>
							</div>
						</header>
							<!--게시물 사진영역 -->
							<div class="img_section">
								<div class="trans_inner">
									<div>
									<!-- 이미지 사진 넘기기-->
										<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
										<!-- 이미지 넣을 수 정하기-->
                                            <div class="carousel-indicators">
                                            <%for(int i =0; i<p_files.length; i++){ %>
                                              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i+1 %>" class="active" aria-label="Slide <%= i+1 %>" aria-current="true"></button>
                                            <%} %>
                                            </div>
                                            <!-- 이미지 여기에 넣는영역 표시-->
                                            <div class="carousel-inner">
                                            <%for(String temp : p_files){%>
                                              <div class="carousel-item active">
                                                <!-- 여기에 사진넣기 --> 	
                                                <a href="policy_board.jsp?p_num=<%=p_dto.getP_num()%>"><img src="./imgs/<%=temp%>"></a>                                          
                                              </div>
                                             <%} %>
                                            
                                             <!--  <div class="carousel-item">
                                                				
                                               <a href="policy_board.jsp"> <img src="imgs/국민취업지원제도2.png" alt="visual02"></a> 								  
                                              </div>	
                                                <div class="carousel-item">
                                                	
                                                <a href="policy_board.jsp"><img src="imgs/국민취업지원제도 3.png" alt="visual03"> </a>
                                          	</div>
											  <div class="carousel-item">
                                               				
                                                <a href="policy_board.jsp"><img src="imgs/국민취업지원제도 4.png" alt="visual04"></a> 								  
                                              </div>
											  <div class="carousel-item">
                                               				
                                                <a href="policy_board.jsp"><img src="imgs/국민취업지원제도 5.png" alt="visual05"> </a>							  
                                              </div>
											  <div class="carousel-item">
                                               				
                                                <a href="policy_board.jsp"><img src="imgs/국민취업지원제도 6.png" alt="visual06"> </a>							  
                                              </div>
											  <div class="carousel-item">
                                               				
                                               <a href="policy_board.jsp"> <img src="imgs/국민취업지원제도7.png" alt="visual07"> 	</a>						  
                                              </div>-->
                                            </div>
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
							
							<div class="detail--right_box">


								<header class="top">
									<!-- 정책 내용영역-->
									
								</header>


								<div class="bottom_icons">
								<!-- 정책 왼쪽 버튼영역 -->
									<div class="left_icons">
									<!-- 정책 좋아요 버튼 -->
										<div class="heart_btn">
											<div class="sprite_heart_icon_outline" >
											<%pl_dto = new PolicyLikesDTO(info.getM_Id(),ranPdto.getP_num()); %>
											<%if(pl_dao.isPolicyLiked(pl_dto)>0){ %>
												<button class="heart_button" id='policylikes<%= count %>'onclick="policylikes(<%= ranPdto.getP_num()%>,this.id,<%=count%>)"><img class="heart" alt="유용해요해제" src="imgs/몰라.JPG"></button>
											<%}else{%>
												<button class="heart_button" id='policylikes<%= count %>' onclick="policylikes(<%= ranPdto.getP_num() %>,this.id,<%=count%>)"><img class='heart' alt='유용해요등록' src='imgs/좋아.JPG'></button>
											<%	}%>
											</div>
										</div>
										<div>
										<!-- 정책 댓글 버튼영역-->
											<div class="sprite_bubble_icon"></div>
										</div>
										
									</div>
									<!-- 정책 아래 오른쪽영역 -->
									<div class="right_icon">
									
									</div>
								</div>
								
								<!-- 정책 좋아요 수 표시 -->
								
								<div class="count_likes">
									좋아요 <span class="count" id='policylike<%= count %>'><%=ranPdto.getP_likes() %></span> 개
								</div>
								
									<div class="timer_container">
										<div class="comment">
											<span class="user_id"><%=ranPdto.getAdmin_id() %></span><%=ranPdto.getP_content() %>
											<div class="timer"></div>
										</div>
									</div>
								
							</div>
							<% count++; %>
							<% break; 
							} 
						} %>
						</article>
  						
                    	<%if(info != null){%>
						<script text="javascript/text">
							let test;
							function policylikes(p_num,clicked_id,cnt){
								let is_like;
								console.log(p_num);
								console.log(clicked_id);
								let m_id = '<%=info.getM_Id()%>';
								let policylikeBtn = document.getElementById(clicked_id);
								console.log(policylikeBtn.innerHTML);
								
								if(policylikeBtn.innerHTML == '<img class="heart" alt="유용해요등록" src="imgs/좋아.JPG">'){
									policylikeBtn.innerHTML = '<img class="heart" alt="유용해요해제" src="imgs/몰라.JPG">'
									is_like = 0;
								}else{
									policylikeBtn.innerHTML = '<img class="heart" alt="유용해요등록" src="imgs/좋아.JPG">'
									is_like = 1;
								}
								
								console.log(is_like);
								$.ajax({
									url : 'PolicyLikesService',
									data :{
										'm_id' :m_id,
										'p_num' : p_num,
										'is_like':is_like
									},
									type:'get', // 요청 타입
									success:function(data){// 통신성공(function(넘겨준데이터))
										if(data =="true"){
											let test = 'policylike'+cnt;
											console.log(test);
											num1 = Number(document.getElementById(test).innerText);
											document.getElementById(test).innerText = num1-1;
											
										}else {
											let test = 'policylike'+cnt;
											console.log(test);
											num1 = Number(document.getElementById(test).innerText);
											document.getElementById(test).innerText = num1+1;
										}
									},
								error:function(){
									console.log("asfknaskm");
								}
								
								})//속성
								
					
									}
							</script> 
							<%} %>
                    
					
					<%	if(info != null){ %>
					<% BoardDAO b_dao = new BoardDAO();
					 
					   LikesDAO l_dao = new LikesDAO();
				       LikesDTO l_dto = new LikesDTO();
				      
				       int count = 0;%>
					<% // 게시판 글 모음 dao에서 로그인한 아이디와 같은 글을 arraylist에 담음 
					ArrayList<BoardDTO> bList = b_dao.showBoard(info.getM_Id()); %>
                       <!-- 사용자 게시글  -->
                       <% for(BoardDTO b_dto : bList){%>
							<%String[] b_files = b_dto.getB_filename().split(","); %>
					<article class="contents">
						<header class="top">
							<div class="user_container">
							<!-- 게시글 프로필 이미지 -->
								<div class="profile_img">
									<img src="imgs/thumb.jpeg" alt="프로필이미지">
								</div>
								<!-- 게시글 유저 닉네임 -->
								<div class="user_name">
									<div class="nick_name user_text">
										<a href="profileAll.jsp?m_id=<%=b_dto.getB_writer()%>"></a>
										<%=b_dto.getB_writer() %>
									</div>
									<div class="top_time">
										<div class="comment">
											<div class="t_timer"><%=b_dto.getB_date() %></div>
										</div>
									</div>
								</div>

							</div>
							<!-- 게시글 수정 삭제 영역  -->
							<div class="sprite_more_icon" >
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
						<!-- 게시글 사진 영역 -->
						<div class="img_section">
							<div class="trans_inner">
								<div>
								<!-- 사진 넘기기 -->
									<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
									<!-- 사진 넣을수 정하기 -->
										<div class="carousel-indicators">
										 <%for(int i = 0; i<b_files.length; i++){%>
										  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i %>" class="active" aria-label="Slide<%=i+1 %>" aria-current="true"></button>
										  <%} %>
										</div>
										<!-- 사진 넣는 영역 -->
										<div class="carousel-inner">
										<%for(String temp : b_files){%>
										  <div class="carousel-item active">
											<!-- 여기에 사진넣기 --> 	
											<a href="Detail-page.jsp"><img src="./imgs/<%=temp%>"></a>
									  
										  </div>
										  <%} %>
										 <!-- <div class="carousel-item">
															
											<a href="Detail-page.jsp"><img src="imgs/3등.PNG" alt="visual02"> </a>								  
										  </div>	
											<div class="carousel-item">
												
											<a href="Detail-page.jsp"><img src="imgs/img_section/img01.jpg" alt="visual03"></a>
									  
										  </div>-->
										</div>
										
										<!-- 사진 왼쪽으로 넘기기 -->
										<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
										  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
										  <span class="visually-hidden">Previous</span>
										</button>
										<!-- 사진 오른쪽으로 넘기기 -->
										<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
										  <span class="carousel-control-next-icon" aria-hidden="true"></span>
										  <span class="visually-hidden">Next</span>
										</button>
									  </div>
								</div>
							</div>
						</div>
						<header class="top">
									<!-- 게시글 내용영역-->
									
								</header>
						
						<!-- 게시글 하단 버튼영역 -->
						<div class="bottom_icons">
						<!-- 왼쪽버튼 영역 -->
							<div class="left_icons">
							<!-- 좋아요 버튼 -->
								<div class="heart_btn">
									<div class="sprite_heart_icon_outline" >
										<%l_dto = new LikesDTO(info.getM_Id(),b_dto.getB_num()); %>
										<%if(l_dao.isLiked(l_dto)>0){ %>
											<button class="heart_button" id='likes<%= count %>'onclick="likes(<%= b_dto.getB_num()%>,this.id,<%=count%>)"><img class="heart" alt="유용해요해제" src="imgs/좋아.JPG"></button>
										<%}else{%>
											<button class="heart_button" id='likes<%= count %>' onclick="likes(<%= b_dto.getB_num() %>,this.id,<%=count%>)"><img class="heart" alt="유용해요등록" src="imgs/몰라.JPG"></button>
										<%	}%>
											</div>
											
										</div>
								<!-- 댓글 버튼 -->
								<div class="sprite_bubble_icon"></div>
								
							</div>
							<!-- 오른쪽영역 -->
							<div class="right_icon">
							<!-- 스크랩버튼 -->
								<div class="sprite_bookmark_outline" ></div>
							</div>
						</div>
						<!-- 좋아요수 표시 -->
						
						<div class="count_likes" id="board_cnt">
									유용해요 <span class="count" id='like<%=count++%>'><%=b_dto.getB_likes() %></span> 개
						</div>
									<div class="timer_container">
										<div class="comment">
											<span class="user_id"><%=b_dto.getB_writer() %></span><%= b_dto.getB_content() %>
											<div class="timer"></div>
											
										</div>
									</div>
									<div class="comment_more">
										<a href="Detail-page.jsp">댓글 더보기</a>
									</div>
						<!-- 댓글 표시 -->
						<div class="comment_container">
							<div class="comment" id="comments">
								<% CommentDAO cmtDAO = new CommentDAO(); %>
										<% BigDecimal b_num = b_dto.getB_num(); %>
										<%ArrayList<CommentDTO> cmtList = cmtDAO.showComment(b_num); %>
										
										<% 	if(cmtList != null){%>
											<%	for(CommentDTO cmt : cmtList){%>
											<span class="user_id"><%=cmt.getCmt_id() %></span>
													<%=cmt.getCmt_content() %>
													
											<div class="timer">
												<%=cmt.getCmt_date() %> 
											</div>
												<%} %>
												<%} %>
									
							</div>
							
						</div>
						<!-- 댓글 입력란 -->
						<div class="comment_field" id="add-comment-post37">
							<form action="CommentService?b_num=<%=b_dto.getB_num() %>" method="post" id="commentform">
								<input type="text" name="c_content" placeholder="댓글달기...">
								<button type="submit" class="upload_btn user_text">댓글등록</button>
							</form>
						</div>
					</article>
					<%count++; %>

	<%} %>
						
					<%if(info != null){%>
	<script text="javascript/text">
		function likes(b_num,clicked_id,cnt){
			let is_like;
			let num1
			let m_id = '<%=info.getM_Id()%>';
			let likeBtn = document.getElementById(clicked_id);
			
			if(likeBtn.innerHTML == '<img class="heart" alt="유용해요등록" src="imgs/몰라.JPG">'){
				likeBtn.innerHTML = '<img class="heart" alt="유용해요해제" src="imgs/좋아.JPG">';
				is_like = 0;
				
			}else{
				likeBtn.innerHTML = '<img class="heart" alt="유용해요등록" src="imgs/몰라.JPG">';
				is_like = 1;
			}
			
			
			$.ajax({
				url : 'LikesPlusService',
				data :{
					'm_id' :m_id,
					'b_num' : b_num,
					'is_liked':is_like
				},
				type:'get', // 요청 타입
				success:function(data){// 통신성공(function(넘겨준데이터))
					if(data =="true"){
						let test = 'like'+cnt;
						num1 = Number(document.getElementById(test).innerText);
						document.getElementById(test).innerText = num1+1;
						
					}else {
						let test = 'like'+cnt;
						num1 = Number(document.getElementById(test).innerText);
						document.getElementById(test).innerText = num1-1;
					}
				},
			error:function(){
				console.log("asfknaskm");
			}
							<%} %>

			
			})//속성
			

		}
	</script> 
						<%} %>
		

				</div>
				
				<!-- 오른쪽영역  -->
				<div class="side_box">
				<!-- 게시물 등록 버튼 -->              <!-- 여기가 버튼 스타일 클래스 -->
					<button type="button" class="btn btn-primary btn btn-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
						+ 게시물 등록
					  </button>
					  <!-- 여기가 게시물 등록버튼 활성화시 나오는 팝업창 -->
					  <!-- Modal -->
					  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<!-- 팝업창 크기 클래스 조절 -->
						<div class="modal-dialog modal-lg">
						  <div class="modal-content">
						  <!-- 팝업창 머리글 -->
							<div class="modal-header">
							  <h1 class="modal-title fs-5" id="staticBackdropLabel">게시물 등록</h1>
							  <!-- 팝업창 닫기버튼 -->
							  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<!-- 팝업창 본문 -->
							<div class="modal-body">
								<div class="post_form_container">
								<!-- 게시물 등록 영역 -->
								<%int count = 0; %>
									<form action="BoardService" class="post_form"  enctype="multipart/form-data"  method="post">
										<div class="title">
											NEW POST
										</div>
										<!-- 가운데 이미지 영역 -->
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
										<p id="filelist">
										<!-- 파일 추가 버튼 -->
										
											<input type="file" name="filename" id="id_photo" style="float: right;" required="required" >
											<script text="javascript/text" >
												function addbtn(){
													$("#filelist").append("<input  type='file' style='float: right;' required='required' name='filename<%=count%>' multiple>");
												}
											</script>
										</p>
											<input type="button" value="+" onclick="addbtn()"> <%count++; %>
										<p>
										<!-- 게시글 폰트 작성  -->
											<textarea name="content" id="text_field" style="resize: none;" cols="50" rows="10" placeholder="140자 까지 등록 가능합니다. #태그명 을 통해서 검색 태그를 등록할 수 있습니다.
						예시 : I # love # insta!"></textarea>
						
										</p>
										<!-- 게시글 등록 버튼 -->
										<input class="submit_btn" type="submit" value="게시글 등록">
									</form>
			
								</div>
							</div>
							<!-- 팝업창 닫기 버튼 -->
							<div class="modal-footer">
							  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
							</div>
						  </div>
						</div>
					  </div>
					<!-- 여기에 게시글 요약본 넣기 아직 구현못함.. 게시글이 없어서... -->
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
									<div class="timer">1시간 전</div>
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
	<script src="js/alert_btn.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	
	
</body>
</html>