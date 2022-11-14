<%@page import="java.lang.reflect.Array"%>
<%@page import="java.util.Random"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.smhrd.model.MemberDAO"%>
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
<title>Peasy</title>


<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/new_post.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/slide.css" />


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
					
					<a href="profileAll.jsp?m_id=<%=info.getM_Id()%>"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
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
                    <%
                    MemberDAO m_dao = new MemberDAO();
                    ArrayList<String> Ranking = m_dao.RankCount();
                    %>
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
                                        <div class="id"><%=Ranking.get(0) %></div>
                                        
                                    </div>
									
                                </div>
								<div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/2등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id"><%=Ranking.get(1) %></div>
                                        
                                    </div>
								</div>
								<div class="thumb_user">
                                    <div class="profile_thumb">
                                        <img src="imgs/3등.PNG" alt="프로필사진">
                                    </div>
                                    <div class="detail">
                                        <div class="id"><%=Ranking.get(2) %></div>
                                        
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
				
				
				<div class ="scrollBlind" >		
				
				<div class="contents_box" >
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
							double max;
							if(p_list != null){
							max = 0;
							}else{
							max = p_list.size();
							}
							Random r = new Random();
							int ranp = (int) ((Math.random() * (max - min)) + min);
							PolicyDTO ranPdto= p_list.get(r.nextInt(p_list.size()));
							
							
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
                                    <button type="button" class="btn btn-outline-dark"><a href="reviewboard.jsp?p_num=<%=ranPdto.getP_num()%>">리뷰</a></button>
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
                                             <% if(i==0) {%>
											  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i %>" class="active" aria-label="Slide<%=i+1 %>" aria-current="true"></button>
											 <%}else{%>
											  <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="<%=i %>" class="active" aria-label="Slide<%=i+1 %>" aria-current="true"></button>
											 <%} %>
                                            <%} %>
                                            </div>
                                            <!-- 이미지 여기에 넣는영역 표시-->
                                            <div class="carousel-inner">
                                            <%int p_index=0; %>
                                            <%for(String temp : p_files){%>
                                              <%if(p_index==0){ %>
	                                             <div class="carousel-item active">
	                                               <a href="policy_board.jsp?p_num=<%=ranPdto.getP_num()%>"><img src="file/<%=temp%>" ></a>                                          
	                                             </div>
	                                             <%}else{ %>
	                                             <div class="carousel-item">
	                                               <a href="policy_board.jsp?p_num=<%=ranPdto.getP_num()%>"><img src="file/<%=temp%>" ></a>                                          
	                                             </div>
                                              <%} %>
                                              <%p_index++; %>
                                            <%} %>
                                            
                                             <!--  <div class="carousel-item">
                                                				
                                               <a href="policy_board.jsp"> <img src="imgs/국민취업지원제도2.png" alt="visual02"></a> 								  
                                              </div>	
                                                <div class="carousel-item">
                                                	
                                                <a href="policy_board.jsp"><img src="imgs/국민취업지원제도 3.png" alt="visual03"> </a>
                                          	</div>
											 
                                              
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
												<button class="heart_button" id='policylikes<%= count %>' onclick="policylikes(<%= ranPdto.getP_num() %>,this.id,<%=count%>)"><img class='heart' alt='유용해요등록' src='imgs/좋아.JPG'></button>
											<%}else{%>
												<button class="heart_button" id='policylikes<%= count %>'onclick="policylikes(<%= ranPdto.getP_num()%>,this.id,<%=count%>)"><img class="heart" alt="유용해요해제" src="imgs/몰라.JPG"></button>
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
			<!-- 일반 유저 게시물 출력 영역 시작-----------------------------------------------------  -->
					<%int indiID= 0; %>
                    <% for(BoardDTO b_dto : bList){%>
						<%String[] b_files = b_dto.getB_filename().split(","); %>
					<!-- 스크롤 버튼 만들기 -->
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
										<a href="profileAll.jsp?m_id=<%=b_dto.getB_writer()%>"> <%=b_dto.getB_writer() %></a>
										
									</div>
									<div class="top_time">
										<div class="comment">
											<div class="t_timer"><%=b_dto.getB_date() %></div>
										</div>
									</div>
								</div>

							</div>
							<!-- 게시글 수정 삭제 영역  -->
									<%if(info.getM_Id().equals(b_dto.getB_writer())){ %>
							<div class="sprite_more_icon" >
								<div class="dropdown">
									<button class="btn btn-secondary dropdown-toggle btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">
									 ...
									</button>
									<ul class="dropdown-menu">
									  <li><a class="dropdown-item" href="#">수정</a></li>
									  <li><a class="dropdown-item" onclick="deleteBoard(<%=b_dto.getB_num()%>)">삭제</a></li>
									  
									</ul>
									  
								  </div>
							</div>
									<%} %>
						</header>
						<!-- 게시글 사진 영역 -->
						<div class="img_section">
							<div class="trans_inner">
								<div>
								<!-- 사진 넘기기 -->
									<div id="carouselExampleIndicators<%=indiID%>" class="carousel slide" data-bs-ride="true">
									<!-- 사진 넣을수 정하기 -->
										<div class="carousel-indicators">
										 <%for(int i = 0; i<b_files.length; i++){%>
										 <% if(i==0) {%>
										  <button type="button" data-bs-target="#carouselExampleIndicators<%=indiID%>" data-bs-slide-to="<%=i %>" class="active" aria-label="Slide<%=i+1 %>" aria-current="true"></button>
										 <%}else{%>
										  <button type="button" data-bs-target="#carouselExampleIndicators<%=indiID%>" data-bs-slide-to="<%=i %>" aria-label="Slide<%=i+1 %>" aria-current="true"></button>
										 <%} %>
									  <%} %>
										</div>
										<!---------------------------------- 사진 넣는 영역 ------------------------------->
										<%int b_index=0; %>
										<div class="carousel-inner">
										<%for(String temp : b_files){%>
										<%if(b_index==0) {%>
										  <div class="carousel-item active">
											<a href="Detail-page.jsp"><img src="file/<%=temp%>"></a>
										  </div>
									  <%}else{ %>
										  <div class="carousel-item">
											<a href="Detail-page.jsp"><img src="file/<%=temp%>"></a>
										  </div>
									  <%} %>
									  <%b_index++; %>
										<%} %>
										<!---------------------------------- 사진 넣기 종료 ------------------------------->
										</div>
										
										<!-- 사진 왼쪽으로 넘기기 -->
										<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators<%=indiID%>" data-bs-slide="prev">
										  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
										  <span class="visually-hidden">Previous</span>
										</button>
										<!-- 사진 오른쪽으로 넘기기 -->
										<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators<%=indiID%>" data-bs-slide="next">
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
										<%l_dto = new LikesDTO(info.getM_Id(),b_dto.getB_num());%>
										<%if(l_dao.isLiked(l_dto)>0){ %>
											<button class="heart_button" id='likes<%= count %>'onclick="likes(<%= b_dto.getB_num()%>,this.id,<%=count%>)"><img class="heart" alt="유용해요해제" src="imgs/좋아.JPG"></button>
										<%}else{%>
											<button class="heart_button" id='likes<%= count %>' onclick="likes(<%= b_dto.getB_num() %>,this.id,<%=count%>)"><img class="heart" alt="유용해요등록" src="imgs/몰라.JPG"></button>
										<%}%>
									</div>
								</div>
								<!-- 댓글 버튼 -->
								<div class="sprite_bubble_icon"></div>
							</div>
							<!-- 오른쪽영역 -->
							<!-- 스크랩버튼 -->
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
										<!-- 댓글 더보기 할때 같은 게시물로 가게 하기... ( 아직 덜함) -->
										<a href="Detail-page.jsp?b_num=<%=b_dto.getB_num()%>">댓글 더보기</a>
										
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
					<%indiID++; %>

	<%} %>
	
	<!-- 일반 유저 게시물 출력 영역 끝-----------------------------------------------------  -->
						
					<%if(info != null){%>
	<script text="javascript/text">
		function likes(b_num,clicked_id,cnt){
			let is_like;
			let num1;
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
				<!-- contents box 긑나는 곳--> 
					</div>
					<%
					PolicyDAO p_dao = new PolicyDAO();
					ArrayList<PolicyDTO> p_list = p_dao.showPolicy();
					double min = 0;
					double max = p_list.size();
					
					%>
					
					
				<!-- 게시물 등록 버튼 -->        
				      <!-- 여기가 버튼 스타일 클래스 -->
				    <div id="uploadbtn">
					<button type="button" class="btn btn-primary btn btn-info" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
						게시물 등록
					  </button>
					  <!-- 여기가 게시물 등록버튼 활성화시 나오는 팝업창 -->
					  <!-- Modal -->
					  <div class="modal fade" id="staticBackdrop" 
					  	data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" 
					  	aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<!-- 팝업창 크기 클래스 조절 -->
						<div class="modal-dialog modal-lg">
						  <div class="modal-content">
						  <!-- 팝업창 머리글 -->
							<div class="modal-header">
							  <h1 class="modal-title fs-5" id="staticBackdropLabel">게시물 등록</h1>
							  <!-- 팝업창 닫기버튼 -->
							  <button type="button" class="btn-close" data-bs-dismiss="modal" 
							  	aria-label="Close"></button>
							</div>
							<!-- 팝업창 본문 -->
							<div class="modal-body">
								<div class="post_form_container">
								<!-- 게시물 등록 영역 -->
									<form action="BoardService" class="post_form" method="post" enctype="multipart/form-data">
										<div class="title">
											NEW POST
										</div>
										<!-- 가운데 이미지 영역 -->
										<div class="img_section">
											<div class="slide slide_wrap">
										      	<div id="slide_item0" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item1" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item2" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item3" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item4" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
												<div class="slide_prev_button slide_button">◀</div>
      											<div class="slide_next_button slide_button">▶</div>
      											<ul class="slide_pagination"></ul>
											</div>
										</div>
										
										
										<!-- 파일 추가 버튼 -->
										<p>
										<input class="form-control form-control-user"  type="file" name="filename" multiple="multiple" 
										name="b_filename" id="product_detail_image" onchange="setDetailImage(event);" 
										accept="image/png, image/jpeg, image/gif, image/bmp, image/tif">
										</p>
										<p id="maxover"></p>
										<!-- 게시글 내용 작성  -->
										<p>
										<textarea name="content" id="text_field" style="resize: none;" cols="50" rows="10" placeholder="140자 까지 등록 가능합니다."></textarea>
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
				  </div>
				  	<script src="js/slide.js"></script>
				  	<script>
					var count = 0;
						/* document.querySelector(".slide.slide_wrap").innerHTML=""; */
							function setDetailImage(event){
								
							 	try {
							 		if(event.target.files.length>5){
							 			count=0;
							        throw("선택하신 파일이 5개를 초과 했습니다!");
							 		}
							 		
							    } catch ( e ) {
							    	document.querySelector("#maxover").innerText=e;
							    }
								for(var image of event.target.files){
									if(event.target.files.length>5){
										continue;
									}else{
										document.querySelector("#maxover").innerText="";
									}
									
									var reader = new FileReader();
									
									reader.onload = function(event){
										var img = document.createElement("img");
										img.setAttribute("src", event.target.result);
										document.querySelector("#slide_item"+count).innerText="";
										document.querySelector("#slide_item"+count).appendChild(img);
										count +=1;
									};
									reader.readAsDataURL(image);
								}
							}
						
					</script>
			  
					  
					  
					<!-- 여기에 게시글 요약본 넣기 아직 구현못함.. 게시글이 없어서... -->
					
					<!-- ///////////////정책글 3~5개정도 랜덤뽑아서 제목보여주고 링크붙이기 //////////////////  -->
				<!-- 오른쪽영역  -->
				<div class="side_box">
					<article class="story">
						<header class="story_header">
							<div>이런 정책도 있어요!</div>
							<div class="more" id="p_more">모두 보기</div>
							<!-- <div class="more">모두 보기</div>  -->
						</header>

						<div class="scroll_inner">
						<%
						int checkArr[] = new int[p_list.size()]; 
						Random rd = new Random();
				  	   	for(int i=0;i<p_list.size();i++)
				        {
				            checkArr[i] = rd.nextInt(p_list.size()); 
				            for(int j=0;j<i;j++) 
				            {
				                if(checkArr[i]==checkArr[j])
				                {
				                    i--;
				                    break;
				                }
				            }
				        }
						%>
						<%for(int i = 0; i < 3; i++){ %>
						<%
						PolicyDTO ranPdto= p_list.get(checkArr[i]);
						%>
							<div class="thumb_user">
								<!-- <div class="profile_thumb">
								 	<img src="imgs/thumb02.jpg" alt="프로필사진"> 
								</div> -->
								<div class="detail">
									<div class="id"><a href="policy_board.jsp?p_num=<%=ranPdto.getP_num()%>"><%=ranPdto.getP_title() %></a></div>
									<% SimpleDateFormat converter = new SimpleDateFormat ("yyyy-MM-dd");%>
									<div class="timer"><%=converter.format(ranPdto.getP_date())%></div>
								</div>
							</div>
							<%} %>
						</div>
					</article>
					<!-- ////////////////////////////////////////////////////////  -->




					<!-- //////////   타 회원 추천?   //////////// -->
					<%
					MemberDAO dao = new MemberDAO();
					ArrayList<MemberDTO> rmList = dao.RandomUser(info.getM_Id());
					System.out.println("나를 제외한 전체 멤버 숫자 = 길이"+rmList.size());
					int checkRmList[] = new int[rmList.size()];
					System.out.println("체크 알엠리스트 길이"+checkRmList.length);
					
				 	for(int i=0;i<rmList.size();i++)
			        {
				 		checkRmList[i] = rd.nextInt(rmList.size()); 
			            for(int j=0;j<i;j++) 
			            {
			                if(checkRmList[i]==checkRmList[j])
			                {
			                    i--;
			                    break;
			                }
			            }
			            
			        }
				 	for(int i =0;i<checkRmList.length;i++){
				 		System.out.println(checkRmList[i]);
				 	}
					%>
					<article class="recommend">
						<header class="reco_header">
							<div>회원님을 위한 추천</div>
						</header>
					<div class="scroll_inner">
					<%for(int i = 0; i<rmList.size();i++){ %>
						<div class="thumb_user">
							<div class="profile_thumb">
								<img src="file/<%=rmList.get(checkRmList[i]).getT_pic()%>" alt="프로필사진">
							</div>
							<div class="detail">
								<div class="id"><a href="profileAll.jsp?m_id=<%=rmList.get(checkRmList[i]).getM_Id()%>"><%=rmList.get(checkRmList[i]).getM_Id()%></a></div>
								<div class="timer"><%=rmList.get(checkRmList[i]).getM_Nickname()%></div>
							</div>
						</div>
					<%} %>
					</div>
					</article>
					<!-- //////////////////////////////////////// -->
					
					
					
					
					
				</div>


			</div>
		</section>



	</section>
	<script type="text/javascript">
	// 삭제 버튼
	function deleteBoard(b_num){
		let m_id = '<%=info.getM_Id()%>';
		
		let delCheck = confirm("데이터 복구는 없다. 삭제 ㄱ?");
		console.log("아이디 : "+m_id);
		console.log("글 번호 : "+b_num)
		console.log(delCheck);
		console.log(typeof delCheck);
		
		$.ajax({
			url : "DeleteBoardService",
			data : {"m_id" : m_id,
					"b_num" : b_num,
					"delCheck" : delCheck
					},
			type : 'get', 
			success : function(data) {
				console.log("통신은 된다?")
				location.replace("./Main.jsp");
			},
			error : function() {
				console.log("조샀다 !");
			}
		})
		
		
	}
	
	
	</script>
	
	
	
	
	<script src="js/comment.js"></script>
	<script src="js/alert_btn.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	
	
	
	
</body>
</html>