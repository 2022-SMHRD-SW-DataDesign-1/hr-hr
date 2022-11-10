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

<!-- Google / Search Engine Tags / 구글 검색 엔진 -->
<meta itemprop="name" content="instagram">
<meta itemprop="description" content="instagram clone">
<meta itemprop="image"
	content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


    <title>----------수정이필요한 부분--------------</title>
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
	MemberDTO info = (MemberDTO) session.getAttribute("info");
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
                    <%if (info != null) {%>
					<%if(info.getM_Id().equals(info.getM_Id())){ %>
					<%}else{ %>
					<a href="Profile.jsp"><img
						src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
					<%} %>
					<%} %>
					
				</div>


			</section>

		</header>


		<div id="main_container">
			<!-- 프로필 영역 -->
			<section class="b_inner">
				<!-- 프로필 상단영역  -->
				<div class="hori_cont">
					<!-- 프로필 상세 -->
					<div class="profile_wrap">
						<!-- 프로필 유저 이미지 -->
						<div class="profile_img">
							<img src="imgs/thumb.jpeg" alt="착한호랑이">
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


							<%if (info.getM_Id().equals(info.getM_Id())) { %>

							<div class="admin_btn">
								<!-- 정보수정 팝업버튼  -->
								<!-- 여기가 버튼 스타일 수정클래스 -->
								<button type="button"
									class="btn btn-primary btn btn-light btn btn-outline-dark"
									data-bs-toggle="modal" data-bs-target="#profileEditModal">
									정보수정</button>


                                    
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
																id="profile_edit">프로필 수정</a> <a href="#"
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
																		<form action="PrivacyUpdateService" method="post">
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

																			<!-- 프로필 소개글 수정 -->
																			<div class="form-group row">
																				<label for="publicinfo" class="col-4 col-form-label">소개</label>
																				<div class="col-8">
																					<textarea id="publicinfo" name="publicinfo"
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
							
							
							
							<%}else{ %>
							<div class="other_btn">
								<!-- detail top a으로 클래스 접근 팔로우 dm영역 -->
								<a href="profile_edit.jsp" class="profile_edit">팔로우</a> <a
									href="#">DM</a>
								<!-- 차단버튼 -->
								<!--여기가 버튼스타일 클래스영역  -->
								<button tye="button"
									class="btn btn-primary btn btn-light btn btn-outline-dark"
									data-bs-toggle="modal" data-bs-target="#exampleModal">
									차단</button>

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
											<div class="modal-body">해당 사용자를 차단합니다</div>
											<!-- 팝업창 하단 버튼영역 -->
											<div class="modal-footer">
												<!-- 팝업창 닫기 버튼 -->
												<button type="button" class="btn btn-secondary"
													data-bs-dismiss="modal">취소</button>
												<!-- 팝업창 (차단)실행버튼 -->
												<button type="button" class="blockbtn">차단</button>
											</div>
										</div>
									</div>
								</div>

							</div>
							<%} %>
							<%} %>


						</div>
						<%if(info != null){ %>
						<div><%=info.getM_Profile() %></div>
						<%} %>
						<%if(info != null){ %>
                            <ul class="middle">
                                <li><span>게시물</span> <%=new BoardDAO().countBoard(info.getM_Id())%></li>
                                <li><span>팔로우</span> <%= new FollowDAO().countFollow(info.getM_Id())%></li>
                                <li><span>팔로워</span> <%= new FollowDAO().countFollower(info.getM_Id())%></li>
                            </ul>				
                            <%} %>
						<%if(info != null){ %>
                            <p class="about">
                                <span class="nick_name">게시글</span> <span class="book_mark">유용해요</span>
                            </p>
                        </div>
                        </div>
                        <!-- 게시글 영역  -->
                        <%
                        BoardDAO b_dao = new BoardDAO();
                        ArrayList<BoardDTO> b_List = b_dao.showBoard(info.getM_Id());
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
    
                    <%} %>




			</section>
		</div>


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
                if (data == 'false') {
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
</script>
<script>


 document.getElementById("profile_edit").addEventListener("click", function () {
     console.log("profile_edit클릭");
     this.style.backgroundColor = "white";
     document.getElementById("profile_edit").style.backgroundColor = "#0a58ca";
     document.getElementById("profile_edit").style.color = "white";
     document.getElementById("pw_edit").style.backgroundColor = "white";
     document.getElementById("pw_edit").style.color = "black";

 })
 document.getElementById("pw_edit").addEventListener("click", function () {
     console.log("edit클릭");
     this.style.backgroundColor = "white";
     document.getElementById("profile_edit").style.backgroundColor = "white";
     document.getElementById("profile_edit").style.color = "black";
     document.getElementById("pw_edit").style.backgroundColor = "#0a58ca";
     document.getElementById("pw_edit").style.color = "white";

 });


 

</script>

</body>

</html>