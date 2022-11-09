
<%@page import="com.smhrd.model.FollowDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
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
</style>
<body>
	<%int count = 0; %>
	<form action="BoardService"  enctype="multipart/form-data"  method="post" id="filelist">
		test 글 내용 작성 : <textarea  rows="10" style="resize: none;" name="content"></textarea><br><!-- 글 작성 --> 
		<input type="submit" value="test글 작성"><!-- 글 작성 -->
		<input  type="file" style="float: right;" name="filename<%=count%>" ><!-- 파일 경로..?넣기  --> 
	</form>
		<input type="submit" value="+" onclick="addbtn()"><br><!-- 파일경로 추가해주는 버튼  -->
		<%count++; %>
	<script type="text/javascript">
		function addbtn(){
			$("#filelist").append("<input  type='file' style='float: right;' name='filename<%=count%>' multiple>")
		}
	</script>
</body>
</html>