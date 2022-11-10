<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- (1) LoginWithNaverId Javscript SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="./js/jquery-3.6.1.min.js"></script>

	<!-- (2) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("n2hM2OM8Nq0pdDU9ufkL",
				"http://localhost:8081/dirverR/naverLogin.jsp");
		// 접근 토큰 값 출력
		console.log(naver_id_login.oauthParams.access_token);
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		
		function naverSignInCallback() {
			let m_Pw= "000"
			let m_Phone= "000"
			 $.ajax({
      		   url : "NaverService",    
      		   type: "post",
      		        
      		        data :{
		        		       	"m_id": naver_id_login.getProfileData('id'),
		        		       	"m_pw": m_Pw,
		        		       	"m_email":naver_id_login.getProfileData('email'),
		        		       	"m_nickname": naver_id_login.getProfileData('nickname'),
		        		       	"m_Phone": m_Phone
      		        },
      		        success : function (data){
      		        	console.log(data);
      		        	location.replace("./Main.jsp")
      		        },
      		})
			
			
			
		}
	</script>
</body>
</html>