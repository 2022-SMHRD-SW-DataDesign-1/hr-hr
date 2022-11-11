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