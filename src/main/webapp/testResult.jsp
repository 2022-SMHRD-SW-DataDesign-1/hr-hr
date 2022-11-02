<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MemberDTO info = (MemberDTO)session.getAttribute("info");// 인로파는 애를 갖고 올거야
	%>
	
	<%= info.getM_Id() %>

</body>
</html>