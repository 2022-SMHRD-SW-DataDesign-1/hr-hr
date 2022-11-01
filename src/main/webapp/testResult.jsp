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
	MemberDTO info = (MemberDTO)session.getAttribute("info");
	
	String m_Id = request.getParameter("m_Id");
	String m_Pw = request.getParameter("m_Pw");
	
%>

<%= info.getM_Id() %>

</body>
</html>