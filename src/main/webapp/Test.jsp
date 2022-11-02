<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 회원가입 -->
	
	<h2>회원가입 테스트</h2> 
	<form action="JoinService" >
	
	Id: <input type = "text" name="m_Id"> <br>
	Pw: <input type = "password" name="m_Pw"> <br>
	Name: <input type = "text" name="m_Name"><br>
	Nickname: <input type = "text" name="m_Nickname"><br>
	Phone: <input type = "text" name="m_Phone">   <br>
	
	<input type="submit" value="회원가입">
	
	</form>
	<br>
	
	<!-- 로그인 -->
	<h2>로그인 테스트</h2>
	<form action="LoginService" method="post">
		Id: <input type = "text" name="m_Id"> <br>
		Pw: <input type = "password" name="m_Pw"> <br>
	
		<input type="submit" value="로그인">
	</form>
</body>
</html>