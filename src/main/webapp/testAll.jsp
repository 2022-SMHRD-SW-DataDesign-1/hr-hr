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
		Name: <input type="text" name="m_Name"><br>
		Nickname: <input type="text" name="m_Nickname"><br>
		Phone: <input type="text" name="m_Phone"> <br> <input
			type="submit" value="test 전송">
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
				dataType: 'json', 
				// 통신 성공 function(넘겨준데이터)
				success : function(data) {
					console.log(data);
					if (data == true) {
						$("#resultCheckID").text("중복");
					} else {
						$("#resultCheckID").text("가능");
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
		Id:<input type="text" name="m_Id"><br>
		Pw: <input type="password" name="m_Pw"> <br> 
		<input type="submit" value="test 로그인">
	</form>
	<%if(info != null){ %>
	 멤버정보 :<%= info.toString() %>~~~~
	 <%} %>
	<hr>
	
	<!-- 로그아웃 o -->
	<br>
	<%if(info != null){ %>
	<a href="LogoutService">로그아웃</a> 
	<%} %>
	<!-- 게시글 작성 -->
	
	<hr>

	<!-- 게시글 목록 출력 + 댓글 작성 -->
	<hr>

	<!-- 정책 게시글 출력 + 리뷰 작성 -->
	<hr>

	<!-- 팔로우, 차단 데이터베이스 값 전달 -->
	<hr>

	<!-- 프로필 출력 + 업데이트 -->
	<hr>





</body>
</html>