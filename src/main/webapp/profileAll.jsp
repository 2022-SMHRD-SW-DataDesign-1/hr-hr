<%@page import="com.smhrd.model.BlockDAO"%>
<%@page import="com.smhrd.model.BlockDTO"%>
<%@page import="com.smhrd.model.FollowDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.FollowDAO"%>
<%@page import="com.smhrd.model.BoardDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">



    <title>Peasy</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="shortcut icon" href="imgs/instagram.png">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

<!-- 부트스트랩 -->
<script>
	$(document).ready(function() {
		$("#pw_edit").click(function() {
			$(".nameEdit").css("display", "none");
			$(".nameEdit1").css("display", "block");
		});
		$("#profile_edit").click(function() {
			$(".nameEdit").css("display", "block");
			$(".nameEdit1").css("display", "none");
		});
	});
</script>

</head>

<body>
	<%
	// 로그인 정보 info 
	MemberDTO loginInfo =  (MemberDTO) session.getAttribute("info");
	MemberDTO info;
	String m_id = request.getParameter("m_id");//이 m_id는 내가 클릭한 사람의 아이디
	System.out.println(m_id);
	
	%>

	<section id="container">

		<header id="header">
			<section class="inner">

				<h1 class="logo">
					<a href="Main.jsp"> <img src="imgs/로고.JPG">

					</a>
				</h1>

				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>

				<div class="right_icons">
                  
					
					
				</div>


			</section>

		</header>
		
	<%if (loginInfo != null) {
	//내가 내 프로필을 보는 경우에 해당하는 영역
			if(m_id==null||m_id.equals(loginInfo.getM_Id())){%>
					<% info = loginInfo;%>
					<%
						System.out.println("여기는 들어오나?");
					%>
					
		<div id="main_container">
			<!-- 프로필 영역 -->
			<section class="b_inner">
				<!-- 프로필 상단영역  -->
				<div class="hori_cont">
					<!-- 프로필 상세 -->
					<div class="profile_wrap">
						<!-- 프로필 유저 이미지 -->
						<div class="profile_img">
							<img src="file/<%=loginInfo.getT_pic() %>" alt="착한호랑이">
						</div>
					</div>

					<div class="detail">
						<div class="top">

							<!-- detail top user_name으로 접근 클래스 -->
                            <%if (info != null) {%>
                                <!-- detail top user_name으로 접근 클래스 -->
                                <div class="user_name"><%=info.getM_Nickname()%></div>
                                <%} else {%>
                                <div class="user_name">로그인이 필요합니다.</div>
                                <%}%>


		                    <%if (info != null) {%>

							<div class="admin_btn">
								<!-- 정보수정 팝업버튼  -->
								<!-- 여기가 버튼 스타일 수정클래스 -->
								<button type="button"
									class="btn btn-primary btn btn-light btn btn-outline-dark"
									data-bs-toggle="modal" data-bs-target="#profileEditModal">
									정보수정</button>

							<%} %>
                                    
								<!-- 팝업창 영역 -->
								<!-- Modal -->
								<div class="modal fade" id="profileEditModal" tabindex="-1"
									aria-labelledby="profileEditeModalLabel" aria-hidden="true">
									<!-- 팝업창 크기 클래스 -->
									<div class="modal-dialog">
										<div class="modal-content">
											<!-- 팝업창 머리글 -->
											<div class="modal-header">
												<h1 class="modal-title fs-5" id="profileEditModalLabel">개인정보
													수정</h1>
												<!-- 팝업창 닫기버튼 -->
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<!-- 팝업창 본문 -->
											<div class="modal-body">
												<!-- 넣는 공간 -->
												<div class="row">
													<div class="col-md-3 ">
														<!-- 버튼 두개 -->
														<div class="list-group">
															<a href="#"
																class="list-group-item list-group-item-action active"
																id="profile_edit">프로필 수정</a> 
															<a href="#"
																class="list-group-item list-group-item-action"
																id="pw_edit">개인정보 수정</a>
														</div>
													</div>

													<!-- 팝업창 오른쪽 -->
													<div class="col-md-9">
														<div class="card">
															<div class="card-body">
																<!-- 팝업창 상단글 -->
																<div class="row">
																	<div class="col-md-12">
																		<h4>Your Profile</h4>
																		<hr>
																	</div>
																</div>
																<div class="row">

																									
																	<%if (info != null) {%>					
																	<!-- 어.... 개인정보  -->
																	<div class="nameEdit">
																		<form action="ProfileUpdateService" method="post"  enctype="multipart/form-data">
																			<!-- 정보수정 입력 보내기 -->
																			<div class="form-group row">
																				<!-- 닉네입입력 -->
																				<label for="text" class="col-4 col-form-label">닉네임*</label>
																				<div class="col-8">
																					<!-- 닉네입 수정입력 -->
																					<input id="text" name="m_Nickname"
																					value="<%=info.getM_Nickname() %>" class="form-control here"
																						required="required" type="text">
																				</div>
																			</div>
																			<!-- 프로필 사진 업로드 -->
																			<div class="form-group row">
																				<!-- 사진 미리보기 -->
																				<div id="slide_item"></div>
																				<!-- 사진 선택 -->
																				<input class="form-control form-control-user" type="file"
																				name="m_pic" id="product_detail_image" onchange="setDetailImage(event);"
																				accept="image/png, image/jpeg, image/gif, image/bmp, image/tif">
																				<div class="col-8">
																				</div>
																			</div>

																			<!-- 프로필 소개글 수정 -->
																			<div class="form-group row">
																				<label for="publicinfo" class="col-4 col-form-label">소개</label>
																				<div class="col-8">
																					<textarea id="publicinfo" name="m_Profile"
																						cols="40" rows="4" class="form-control"><%=info.getM_Profile() %></textarea>
																				</div>
																			</div>

																			<div class="form-group row">
																				<div class="offset-4 col-8">
																					<button name="submit" type="submit"
																						class="updatebtn">Update My
																						Profile</button>
																				</div>
																			</div>
																			
																		</form>
																		<script>
																				function setDetailImage(event){
																					for(var image of event.target.files){
																						var reader = new FileReader();
																						
																						reader.onload = function(event){
																							var img = document.createElement("img");
																							img.setAttribute("src", event.target.result);
																							document.querySelector("#slide_item").innerText="";
																							document.querySelector("#slide_item").appendChild(img);
																						};
																						
																						reader.readAsDataURL(image);
																					}
																				}
																		</script>
																	</div>
																	<!-- 비밀번호 수정 .... -->
																	<div class="nameEdit1" style="display: none;">
																		<form action="PrivacyUpdateService" method="post">
																			<div class="form-group row">
																				<!-- 이름 수정영역 -->
																				<label for="username" class="col-4 col-form-label">이메일</label>
																				<div class="col-8">
																					<!-- 이름입력 -->
																					<input id="username" name="m_Email"
																						value="<%=info.getM_Email() %>" class="form-control here"
																						required="required" type="text">
																				</div>
																			</div>
																			<div class="form-group row">
																				<!-- 패스워드 수정영역 -->
																				<label for="name" class="col-4 col-form-label">비밀번호</label>
																				<div class="col-8">
																					<!-- 패스워드 입력 -->
																					<input id="pw" name="m_Pw" placeholder="password"
																						class="form-control here" type="password">
																				</div>
																			</div>
																			<!-- 패스워드 확인 -->
																			<div class="form-group row">
																				<label for="lastname" class="col-4 col-form-label">비밀번호
																					확인</label>
																				<div class="col-8">
																					<!-- 패스워드 확인 입력 -->
																					<input id="pwcheck" name="m_pwcheck"
																						placeholder="PwCheck" class="form-control here"
																						type="password" onkeyup="checkPW()">
																						
																						<span id="pwCheckResult"></span>
																				</div>
																			</div>
																			<div class="form-group row">
																				<!-- 닉네입입력 -->
																				<label for="text" class="col-4 col-form-label">전화번호</label>
																				<div class="col-8">
																					<!-- 닉네입 수정입력 -->
																					<input id="text" name="m_Phone"
																					value="<%=info.getM_Phone() %>" class="form-control here"
																					required="required" type="text">
																				</div>
																			</div>

																			<div class="form-group row">
																				<div class="offset-4 col-8">
																					<button name="submit" type="submit"
																						class="updatebtn">Update My
																						Profile</button>
																				</div>
																			</div>
																		</form>
																	</div>
																</div>

															</div>
														</div>
													</div>
													<!-- 수정창 -->
												</div>
												<!-- 넣는 공간 끝 -->
												<%}%>
											</div>
											<!-- 팝업창 닫기 -->
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">닫기</button>

											</div>
										</div>
									</div>
								</div>
								<!-- 모달 끝! -->
							<%if(info != null){ %>
							<form action="LogoutService">
								<button type="submit" class="btn btn-primary btn btn-light btn btn-outline-dark">
									로그아웃
								</button>
							</form>
							<%} %>

							</div>
							<%if(info != null){ %>
						<div class="introduce"><%=info.getM_Profile() %></div>
						<%} %>
							
						<%if(info != null){ %>
                            <ul class="middle area">
                                <li><span>게시물</span> <%=new BoardDAO().countBoard(info.getM_Id())%></li>
                                <li><span>팔로우</span> <%= new FollowDAO().countFollow(info.getM_Id())%></li>
                                <li><span>팔로워</span> <%= new FollowDAO().countFollower(info.getM_Id())%></li>
                            </ul>				
                            <%} %>
                            <%if(info != null){ %>
                            <p class="about space">
                                <span class="nick_name">게시글</span> <span class="book_mark">유용해요</span>
                            </p>
                        </div>
                        </div>
                        </div>
                        <!-- 게시글 영역  -->
                        <%
                        BoardDAO b_dao = new BoardDAO();
                        ArrayList<BoardDTO> b_List = b_dao.profileBoard(loginInfo.getM_Id());
                        ArrayList<BoardDTO> b_useful_List = b_dao.showUsefulBoard(loginInfo.getM_Id());
                        %>
                        
                        <div class="mylist_contents contents_container active">
                    
                        <%for(BoardDTO b_dto : b_List){ %>
                        <%String[] files = b_dto.getB_filename().split(","); %>
                            <div class="pic">
                                <a href="#"><img src="./file/<%=files[0]%>"></a>
                            </div>
                        <%} %>
                        </div>

				<!-- 타 게시글 스크랩 영역 -->
				
                <div class="bookmark_contents contents_container">
                    <%for(BoardDTO b_dto:b_useful_List){ %>
                    <%String[] files = b_dto.getB_filename().split(","); %>
                            <div class="pic">
                                <a href="#"><img src="./file/<%=files[0]%>"></a>
                            </div>
                            
                    <%} %>
                  </div>
                   </section>
                    </div>
                  
				
				<%} %>
				
				
				
				<!-- 여기부터 다른 사용자인 경우에 해당---------------------------------------- -->
			<%}else{ 
				MemberDAO dao = new MemberDAO();//DAO기능 하나 쓸건데
				info = dao.information(m_id);//infomation method는 Select * from 멤버테이블임 == 리턴 타입이 m_id의 값을 다 가지고 있는 memberDTO다 
			%>
			<div id="main_container">
			<!-- 프로필 영역 -->
			<section class="b_inner">
				<!-- 프로필 상단영역  -->
				<div class="hori_cont">
					<!-- 프로필 상세 -->
					<div class="profile_wrap">
						<!-- 프로필 유저 이미지 -->
						<div class="profile_img">
							<img src="file/<%=info.getT_pic() %>" alt="착한호랑이">
						</div>
					</div>

					<div class="detail">
						<div class="top">
						<div class="user_name"><%=info.getM_Nickname()%></div>
						
							<div class="other_btn">
								<!-- detail top a으로 클래스 접근 팔로우 dm영역 -->
								<%if(info != null){%>
								<%FollowDTO fc_dto = new FollowDTO(loginInfo.getM_Id() ,info.getM_Id()); 
								  FollowDAO fdao = new FollowDAO(); %>
								<%if(fdao.followCheck(fc_dto)>0){ %>
									<button class="btn btn-primary btn-light btn-outline-dark" id="follows" onclick="follows('<%=info.getM_Id()%>',this.id)">
										언팔로우
									</button>
								<%}else{%>
									<button class="btn btn-primary btn-light btn-outline-dark" id="follows" onclick="follows('<%=info.getM_Id()%>',this.id)">
										팔로우
									</button>
									<%}%>
									<%}%>
									
								<button type="submit" class="btn btn-primary btn btn-light btn btn-outline-dark"> 
									<a href="#">DM</a>
								</button>
								
								
								<!-- 차단버튼 -->
								<!--여기가 버튼스타일 클래스영역  -->
								<%
								BlockDTO bdto = new BlockDTO(loginInfo.getM_Id(),info.getM_Id());
								BlockDAO bdao = new BlockDAO();
								if(bdao.blockCheck(bdto)>0){%>
								<button type="button" id="blockMbtn"
									class="btn btn-primary btn btn-light btn btn-outline-dark"
									data-bs-toggle="modal" data-bs-target="#exampleModal">
									차단 해제</button>
								<%}else{%>
								<button type="button" id="blockMbtn"
									class="btn btn-primary btn btn-light btn btn-outline-dark"
									data-bs-toggle="modal" data-bs-target="#exampleModal">
									차단</button>
								<%} %>

								<!-- Modal -->
								<!-- 버튼활성화시 보이는 부분 -->
								<div class="modal fade" id="exampleModal" tabindex="-1"
									aria-labelledby="exampleModalLabel" aria-hidden="true">
									<!-- 팝업창 크기클래스 -->
									<div class="modal-dialog">
										<div class="modal-content">
											<!-- 팝업창 머리글 -->
											<div class="modal-header">
												<h1 class="modal-title fs-5" id="exampleModalLabel">차단여부
													설정</h1>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<!-- 팝업창 본문영역 -->
											<%if(bdao.blockCheck(bdto)>0){%>
											<div class="modal-body">해당 사용자의 차단을 해제합니다.</div>
											<%}else{%>
											<div class="modal-body">해당 사용자를 차단합니다</div>
											<%} %>
											<!-- 팝업창 하단 버튼영역 -->
											<div class="modal-footer">
												<!-- 팝업창 닫기 버튼 -->
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">취소</button>
												<!-- 팝업창 (차단)실행버튼 -->
												<%if(bdao.blockCheck(bdto)>0){%>
												<button type="button" class="blockbtn" onclick="blockM()">해제</button>
												<%}else{%>
												<button type="button" class="blockbtn" onclick="blockM()">차단</button>
												<%} %>
											</div>
										</div>
									</div>
								</div>

							</div>
							<script type="text/javascript">
							let Block_cnt;
							let block_id = '<%=info.getM_Id()%>';
							let m_id ='<%=loginInfo.getM_Id()%>'
							let blockBtn = document.getElementById("blockMbtn");
							function blockM(){
								
								console.log("(현재 페이지의 m_id)차단하는 아이디 : "+block_id);
								console.log("현재 session에 담긴 아이디(로그인한 사용자의 아이디) : "+m_id);
								
								
								if(blockBtn.innerText == '차단'){
									blockBtn.innerText = '차단 해제'
									Block_cnt = 0;
								}else{
									blockBtn.innerText = '차단'
									Block_cnt = 1;
								}
								
								$.ajax({
										url: 'BlockService',
										data :{
											'm_id' :m_id,
											'block_id' : block_id,
											'Block_cnt' : Block_cnt
										},
										type:'get',
										success:function(data){
											console.log(data);
											location.reload();
											if(data =="true"){
											}else{
											}						
											
										},
									error:function(){
										console.log("블락기능 실패");
									}
							
								})
							}
							</script>

						</div>
						<%if(info != null){ %>
						<div><%=info.getM_Profile() %></div>
						<%} %>
						<%if(info != null){ %>
						<%int count = new BoardDAO().countBoard(info.getM_Id());%>
						<%int count2 = new FollowDAO().countFollow(info.getM_Id());%>
						<%int count3 = new FollowDAO().countFollower(info.getM_Id());%>
                            <ul class="middle">
                                <li><span>게시물 </span><%=count %> </li>
                                <li>팔로우 <span id="isFollow"><%=count2 %></span> </li>
                                <li>팔로워 <span id="isFollowed"><%=count3 %></span> </li>
                            </ul>				
                            <%} %>
						<%if(info != null){ %>
                            <p class="about">
                                <span class="nick_name">게시글</span> 
                                <span class="book_mark">유용해요</span>
                            </p>
                        </div>
                        <%if(bdao.blockCheck(bdto)>0){ //차단한 경우에는 게시글 보여주면 안되니까%>
                        <%}else{ %>
                        </div>
                        <!-- 게시글 영역  -->
                        <%
                        BoardDAO b_dao = new BoardDAO();
                        ArrayList<BoardDTO> b_List = b_dao.profileBoard(info.getM_Id());
                        ArrayList<BoardDTO> b_useful_List = b_dao.showUsefulBoard(info.getM_Id());
                        %>
                        
                        <div class="mylist_contents contents_container active">
                    
                        <%for(BoardDTO b_dto : b_List){ %>
                        <%String[] files = b_dto.getB_filename().split(","); %>
                            <div class="pic">
                                <a href="#"><img src="./file/<%=files[0]%>"></a>
                            </div>
                        <%} %>
                        </div>

				<!-- 타 게시글 스크랩 영역 -->
				
		                <div class="bookmark_contents contents_container">
		                    <%for(BoardDTO b_dto:b_useful_List){ %>
		                    <%String[] files = b_dto.getB_filename().split(","); %>
                            <div class="pic">
                                <a href="#"><img src="./file/<%=files[0]%>"></a>
                            </div>
                        </div>
                    <%} %>

			</section>
		</div>
                    
                   <%} %>
                   
                   <%} %><!-- 차단한 사용자 else문 종료 중괄호 -->
                 <%} %>
                 <!-- 여기까지 다른 사용자인 경우에 해당 -->
                 
             <%}%>
                   
                   


	</section>


	<!--<script src="js/insta.js"></script>-->
	<script src="js/profile.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>

<!-- 비밀번호 같은지 체크 -->
	
<script>
//비번 중복체크
    function checkPW() {
        let inputPW = $("#pw").val();
        let inputPWCheck = $("#pwcheck").val();
        console.log(inputPW);
        console.log(inputPWCheck);

        $.ajax({
            // 요청서버 url
            url : "PwCheckService",
            // 요청할 때 같이 보내줄 데이터
            data : {"inputPW" : inputPW,
                    "inputPWCheck" : inputPWCheck},
            // 요청 타입
            type : 'get', 
            // 통신 성공 function(넘겨준데이터)
            success : function(data) {
                console.log(typeof data);
                if (data == 'true') {
            $("#pwCheckResult").text("같아요~");
            $("#privacyUpdateSubmit").attr("disabled",false);
                } else {
            $("#pwCheckResult").text("달라요~");
            $("#privacyUpdateSubmit").attr("disabled",true);
                }
            },
            // 통신 실패
            error : function() {
                console.log("조샀다 !");
            }
        })
    }
    //팔로우
    <%if(loginInfo != null){%>
    let followCnt = <%=new FollowDAO().countFollower(request.getParameter("m_id"))%>;
	
	function follows(follow_id,clicked_id){
		let Follow_cnt;
		let m_id = '<%=loginInfo.getM_Id()%>';
		
		console.log("팔로우 아이디 : "+follow_id);
		console.log(clicked_id);
		
		
		
		
		let followsBtn = document.getElementById(clicked_id);
		
		if(followsBtn.innerText == '팔로우'){
			followsBtn.innerText = '언팔로우'
			Follow_cnt = 0;
		}else{
			followsBtn.innerText = '팔로우'
			Follow_cnt = 1;
		}
		
		$.ajax({
				url: 'FollowService',
				data :{
					'm_id' :m_id,
					'follow_id' : follow_id,
					'Follow_cnt' : Follow_cnt
				},
				type:'get',
				success:function(data){
					console.log(data);
					if(data =="true"){
						followCnt += 1;
					}else{
						followCnt -= 1;
					}						
					$('#isFollowed').text(followCnt);
					
				},
			error:function(){
				console.log("errrrr");
			}
	
		})
	
		}
	<%}%>
</script>


</body>

</html>