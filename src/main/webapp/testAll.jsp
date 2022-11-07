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
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
  /* 여러 채팅창 간의 간격과 배열 위치*/
  .float-left{
    float:left;
    margin: 5px;
  }
</style>
<body>

	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	
	%>
	<!-- 기능 테스트 페이지 -->

	<hr>
	<!-- 회원가입 o -->
	<form action="JoinService" method="post">
		Id:<input type="text" name="m_Id" id="inputID">
		<input type="button" value="ID중복체크" onclick="checkID()"><br>
		<span id="resultCheckID"></span> <br> 
		Pw: <input type="password" name="m_Pw"> <br> 
		Email: <input type="text" name="m_Email"><br>
		Nickname: <input type="text" name="m_Nickname"><br>
		Phone: <input type="text" name="m_Phone"> <br> <input
			type="submit" value="test 전송" id = "joinBtn" disabled="disabled">
	</form>


	<!-- 아이디 중복 체크 o -->
	
	<script>
		function checkID() {
			let inputID = $("#inputID").val();
			console.log(inputID);

			$.ajax({
				// 요청서버 url
				url : "IDCheckService",
				// 요청할 때 같이 보내줄 데이터
				data : {"inputID" : inputID},
				// 요청 타입
				type : 'get', 
				// 통신 성공 function(넘겨준데이터)
				success : function(data) {
					console.log(typeof data);
					if (data == 'true') {
						$("#resultCheckID").text("중복");
						$("#joinBtn").attr("disabled",true);
					} else {
						$("#resultCheckID").text("가능");
						$("#joinBtn").attr("disabled",false);
					}
				},
				// 통신 실패
				error : function() {
					console.log("조샀다 !");
				}
			})
		}
	</script>

	<hr>
	<!-- 로그인 o -->
	<form action="LoginService" method="post">
		Id:<input type="text" name="m_Id"> <br>
		Pw: <input type="password" name="m_Pw"> <br> 
		<input type="submit" value="test 로그인">
	</form>
	<%if(info != null){ %>
	 멤버정보 :<%= info.toString() %>
	 <%} %>
	 
	 
	 
	<hr>
	<!-- 로그아웃 o -->
	<br>
	<%if(info != null){ %>
	<a href="LogoutService">로그아웃</a> 
	<%} %>
	
	
	
	<hr>
	<!-- 게시글 작성 o -->
		<form action="BoardService"  enctype="multipart/form-data"  method="post">
		사진등록 :<input  type="file" style="float: right;" name="filename">
		게시글 입력 : <textarea  rows="10" style="resize: none;" name="content"></textarea><br> 
		<input type="submit" value="게시글 등록">
	</form>
	
	<hr>
	<!-- 게시글 목록 출력 o + 댓글 작성 o + 출력 o -->
	<%if(info != null){ %>
	게시글 내용(사진포함)
	<%
		//댓글 dao
		CommentDAO cmtDAO = new CommentDAO();
		//게시판 dao
		BoardDAO dao = new BoardDAO();  
		
		// 게시판 글 모음 dao에서 로그인한 아이디와 같은 글을 arraylist에 담음 
		ArrayList<BoardDTO> bList = dao.showBoard(info.getM_Id());
		
		for(BoardDTO b_dto : bList){%>
			게시글 : <%= b_dto.toString() %><br>	
		<!-- 게시글 번호 -->
		<%BigDecimal b_num = b_dto.getB_num();
		ArrayList<CommentDTO> cmtList = cmtDAO.showComment(b_num);%>
		<button onclick="likesPlus()">유용해요</button>
		<!-- // 유용해요버튼을 누루는 순간 board테이블에 있는 게시글의 좋아요가 1개 올라간다.  -->
		
		
	
		<script>
		
		/* $sql="update t_board set b_likes = b_likes+1 where b_num = #{b_num}" */
		
			function likesPlus(){
				/* let b_num = $("#b_num").val();
				console.log(b_num);
				 */
				$.ajax({
					url:'LikesPlusService', //요청서버 url
					data:{'b_num':b_num}, // 요청할 떄 같이 보내줄 데이터
					type:'get', // 요청 타입
					success:function(data){// 통신성공(function(넘겨준데이터))
						console.log(typeof data);
						//resultLikesPlus
						if(data == 'true'{
							$("#resultLikesPlus").text('더하기 1 성공');
						}else{
							$("#resultLikesPlus").text('더하기 1 실패');
						}
						
				
				},
				error:function(){
					console.log("통신실패");
				}
				
				})//속성
			}
		
		
		// 1. ajax를 통해서 서블릿으로 이동한다. 
		// 2. 게시물 번호를 들고간다
		// 3. DB에 접속해서 sql 문장을 실행한다.(dao)메소드  int 성공 실패
		
		
		
		</script> 
		
	<!-- 	/* 좋아용 버튼 + 좋아요 누를 때 좋아요 카운트 올라가게 ==> mapper 구성 필요하고, dao 필요하고 <== 모르면 물어보면서 */ -->
		
		
		
		
		
		<% if(cmtList != null){%>
		<% for(CommentDTO cmt : cmtList){%>
		댓글 : <%=cmt.toString() %>
		<br>
		
		<%} %>
		<%} %>
			
		<% }%>		
	<%} %>
	<form action="CommentService">
		게시글 번호 입력 : <input type="text" name ="b_num">
		댓글입력 : <textarea  rows="10" style="resize: none;" name="c_content"></textarea><br> 
		<input type ="submit" value="댓글 등록">
</form>


	<hr>
	<!-- 정책 작성 o-->
	
	
	<%-- <%if(info != null && info.getM_Id().equals("admin")){   %> --%>
	
	<form action="PolicyService"  enctype="multipart/form-data"  method="post" >
		정책 제목 : <input type = "text" name = "p_title">
		정책사진 등록 :<input  type="file" style="float: right;" name="p_filename">
		정책 게시글 입력 : <textarea  rows="10" style="resize: none;" name="p_content"></textarea><br> 
		<input type="submit" value="정책게시글 등록">
	</form>
	
	
	
	 <!-- 정책 목록 출력 + 리뷰 작성 + 출력-->
	<%if(info != null){%>
	정책 게시글 포함 
	
	<% PolicyDAO dao = new PolicyDAO();
	ArrayList<PolicyDTO> p_list = dao.showPolicy();
	
	for(PolicyDTO pdto : p_list){%>
		정책 :<%=pdto.toString() %>
	<% }%>
		 
	
	<%}%>  
	<!-- /* 목록은 리스트라고! */ -->
	a
	
	
	

	<hr>
	<!-- 채팅창 팝업 or open용 -->
	 
	  	
	
	<hr>
	<!-- 팔로우, 차단 데이터베이스 값 전달 -->
	
	
	
	
	
	
	

	<hr>
	<!-- 프로필 출력 o + 업데이트 -->
	<% if(info != null) {%>
	아이디 : <%=info.getM_Id() %><br>
	닉네임 : <%=info.getM_Nickname() %><br>
	<%int count = new BoardDAO().countBoard(info.getM_Id());  %>
	게시물 <%=count %> <br> 
	<%int count2 = new FollowDAO().countFollow(info.getM_Id()); %>
	<%int count3 = new FollowDAO().countFollower(info.getM_Id()); %>
	팔로우 수 <%=count2 %>
	팔로워 수 <%=count3 %>
	<%} %>

</body>
</html>