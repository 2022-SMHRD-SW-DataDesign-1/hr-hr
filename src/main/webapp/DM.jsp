<%@page import="com.smhrd.model.PolicyDAO"%>
<%@page import="com.smhrd.model.PolicyDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/DM.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
		<!-- 헤더영역(상단 메뉴바) -->
	<section id="container">
		<header id="header">
			<section class="h_inner">

				<h1 class="logo">
					<a href="Main.jsp">
						<img src="imgs/로고.JPG">
						
					</a>
				</h1>

				<div class="search_field">
					<div class="fake_field">
						<input  type="text" placeholder="검색" tabindex="search_field">
					</div>
						<span class=sprite_small_search_icon></span> 
				</div>
			</section>
		</header>
	</section>
		<!---------------------------- 메뉴바 종료  ---------------------------->
		
		
		<!-- 왼쪽 랭킹 표시 페이지 ------------------------  -->
		  <!--왼쪽 영역 -->
			<div class="left_side_box_rank">
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
		<!-- 왼쪽 랭킹 표시 페이지 종료 ------------------------  -->
		
	<!------------------------------- 채팅창 판데기 -------------->
	  
  <!-- ------------------------------- 템플릿용 채팅박스--------------------------------->
  
  <div class="template"></div>
	<div id="chat-room">
		<div class="message-box">
		<!-- 날짜 표시영역 -->
			<div class="message-group" data-date-str="여기에 날짜">
			
			<!------------------------------- 타유저 채팅 ------------------->
				<div class="chat-message other">
					<!-- 다른사용자 아이콘 => 프로필로 대체할꺼임 없을시 default로 얘임 -->
					<section>
						<i class="fa fa-user"></i>
					</section>
					<!-- 타유저 채팅전송 -->
					<span>아들</span>
					<div>굿모닝!!!!</div>
				</div>
			<!------------------------------- 타유저 채팅 ------------------->
			
				<!------------------- 본인 채팅 ------------------------->
				<div class="chat-message mine">
				<!-- 로그인 사용자 아이콘 ==> 프로필 사진으로 대체 없을시에는 default로 이거 -->
					<section>
						<i class="fa fa-user"></i>
					</section>
					<!-- 사용자 닉네임? 이름 -->
					<span>홍길동</span>
					<div>새벽공기가 쌀쌀하구나</div>
				</div>
				<!------------------- 본인 채팅 ------------------------->
				
				
			</div>
			<!-- 날짜 바뀌는거 확인 ㄱㄱ  -->
			<div class="message-group" data-date-str="2014년 12월 11일 월요일">
				<div class="chat-message other">
					<section>
						<i class="fa fa-user"></i>
					</section>
					<span>아들</span>
					<div>굿모닝!!!! 입니다!</div>
				</div>

				<div class="chat-message mine">
					<section>
						<i class="fa fa-user"></i>
					</section>
					<span>홍길동</span>
					<div>오늘은 날씨가 좋네~ ㅎㅎ</div>
				</div>

			</div>
		</div>
		<!-- 채팅입력란 -->
		<div class="input-box">
			<input type="text" id="text-input">
			<!-- 첨부파일 -->
			<div class="btn-plus">
				<i class="fa fa-plus" aria-hidden="true"></i>
			</div>
			<!-- 채팅전송 버튼  -->
			<div class="btn-submit">
				<span>전송</span>
			</div>
		</div>
	</div>
	
	<!-- 우측 박스 디자인   ------------------------->
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
										
											<input type="file" name="filename" id="id_photo" style="float: right;" required="required" multiple="multiple">
										
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
					
					<!-- ///////////////정책글 3~5개정도 랜덤뽑아서 제목보여주고 링크붙이기 //////////////////  -->
					
					<article class="story">
						<header class="story_header">
							<div>스토리</div>
							<div class="more">모두 보기</div> 
						</header>

						<div class="scroll_inner">
						<% PolicyDAO p_dao = new PolicyDAO(); %>
						<%ArrayList<PolicyDTO> p_list = p_dao.showPolicy(); %>
						<%for(int i = 0; i < 3; i++){ %>
						<%
						int ranp = (int) ((Math.random() * (max - min)) + min);
						PolicyDTO ranPdto= p_list.get(ranp);
						%>
							<div class="thumb_user">
								<div class="profile_thumb">
									<img src="imgs/thumb02.jpg" alt="프로필사진">
								</div>
								<div class="detail">
									<div class="id"><%=ranPdto.getP_title() %></div>
									<div class="timer"><%=ranPdto.getP_date() %></div>
								</div>
							</div>
							<%} %>
						</div>
					</article>
					<!-- ////////////////////////////////////////////////////////  -->




					<!-- //////////   타 회원 추천?   //////////// -->
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
					<!-- //////////////////////////////////////// -->
	
	
	 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	 <script type="text/javascript">
	    // 서버의 admin의 서블릿으로 웹 소켓을 한다.
	    var webSocket = new WebSocket("ws://localhost:8081/diverR/admin");
	    // 운영자에서의 open, close, error는 의미가 없어서 형태만 선언
	    webSocket.onopen = function(message) { };
	    webSocket.onclose = function(message) { };
	    webSocket.onerror = function(message) { };
	    // 서버로 부터 메시지가 오면
	    webSocket.onmessage = function(message) {
	      // 메시지의 구조는 JSON 형태로 만들었다.
	      let node = JSON.parse(message.data);
	      // 메시지의 status는 유저의 접속 형태이다.
	      // visit은 유저가 접속했을 때 알리는 메시지다.
	      if(node.status === "visit") {
	        // 위 템플릿 div를 취득한다.
	        let form = $(".template").html();
	        // div를 감싸고 속성 data-key에 unique키를 넣는다.
	        form = $("<div class='float-left'></div>").attr("data-key",node.key).append(form); 
	        // body에 추가한다.
	        $("body").append(form);
	      // message는 유저가 메시지를 보낼 때 알려주는 메시지이다.
	      } else if(node.status === "message") {
	        // key로 해당 div영역을 찾는다.
	        let $div = $("[data-key='"+node.key+"']");
	        // console영역을 찾는다.
	        let log = $div.find(".console").val();
	        // 아래에 메시지를 추가한다.
	        $div.find(".console").val(log + "(user) => " +node.message + "\n");
	      // bye는 유저가 접속을 끊었을 때 알려주는 메시지이다.
	      } else if(node.status === "bye") {
	        // 해당 키로 div를 찾아서 dom을 제거한다.
	        $("[data-key='"+node.key+"']").remove();
	      }
	    };
	    // 전송 버튼을 클릭하면 발생하는 이벤트
	    $(document).on("click", ".sendBtn", function(){
	      // div 태그를 찾는다.
	      let $div = $(this).closest(".float-left");
	      // 메시지 텍스트 박스를 찾아서 값을 취득한다.
	      let message = $div.find(".message").val();
	      // 유저 key를 취득한다.
	      let key = $div.data("key");
	      // console영역을 찾는다.
	      let log = $div.find(".console").val();
	      // 아래에 메시지를 추가한다.
	      $div.find(".console").val(log + "(me) => " + message + "\n");
	      // 텍스트 박스의 값을 초기화 한다.
	      $div.find(".message").val("");
	      // 웹소켓으로 메시지를 보낸다.
	      webSocket.send(key+"#####"+message);
	    });
	    // 텍스트 박스에서 엔터키를 누르면
	    $(document).on("keydown", ".message", function(){
	      // keyCode 13은 엔터이다.
	      if(event.keyCode === 13) {
	        // 버튼을 클릭하는 트리거를 발생한다.
	        $(this).closest(".float-left").find(".sendBtn").trigger("click");
	        // form에 의해 자동 submit을 막는다.
	        return false;
	      }
	      return true;
	    });
	 </script>
	
	

	
</body>
</html>