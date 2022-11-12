
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
	<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/detail-page.css">
		<link rel="shortcut icon" href="imgs/instagram.png">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">


<title>Insert title here</title>
</head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<body>


	<h3>파일 등록 여러개 + 사진 미리보기</h3>
<!-- 미리볼 사진 추가해줄 영역  종료 -->


	<form action="PolicyService" enctype="multipart/form-data"
		method="post" id="p_filelist1">
		<div class="form-group">
			제목 : <input type="text" name="p_title"> 
			내용 : <textarea rows="10" style="resize: none;" name="p_content"></textarea>
			<br> 
			<input class="form-control form-control-user" type="file" multiple="multiple"
			name="product_detail_image" id="product_detail_image" onchange="setDetailImage(event);">
		</div>
		<input type="submit" value="정책게시글 등록">
	</form>

	
	
	<!-- 미리볼 사진 추가해줄 영역 -->
	<div class="img_section">
		<div class="trans_inner">
			<div>
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
						포스트 이미지 추가
				</div>
			</div>
		</div>
	</div>

	<script>
		function setDetailImage(event){
			var count = 0 ; //애는 
			//preview 내부 초기화
			document.querySelector("#carouselExampleIndicators").innerText="";
			
			//버튼 indicator 설정 얘는 for문을 돌면안됨 얘 안에 indicator 갯수맞춰서 appendchild
			var indi = document.createElement("div");
			indi.setAttribute("class", "carousel-indicators");
		
			
			
			//이미지 넣는 영역 class carousel-inner 
			var imgdiv = document.createElement("div");
			imgdiv.setAttribute("class","carousel-inner");
			
			for(var image of event.target.files){
				var reader = new FileReader();
				reader.onload = function(event){

					
					console.log(count);
					//인디케이터 개수 맞춰서 생성
					var btn = document.createElement("button");
					btn.setAttribute( "data-bs-target","#carouselExampleIndicators");
					btn.setAttribute( "type","button");
					var slide ="Slide "+(count) 
					btn.setAttribute("data-bs-slide-to",slide);
					if(count==0){
						btn.setAttribute("class","active");
						btn.setAttribute("aria-current","true");
					}
					slide = "Slide "+(count+1)
					btn.setAttribute("aria-label",slide);
					btn.setAttribute("class"," ");
					
					//인디케이터 감싸는 태그에 추가
					indi.appendChild(btn);
					
					
					//이미지 태그 추가부분
					var dtag = document.createElement("div");
					if(count ==0){
						dtag.setAttribute("class","carousel-item active");
					}else{
						dtag.setAttribute("class","carousel-item");
					}
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					dtag.appendChild(img);
					imgdiv.appendChild(dtag);//이미지 한개 완성
					
					count += 1;
				};
				
				reader.readAsDataURL(image); 
				
			}
			
			//좌우 버튼 넣는 영역
			//previous button
			var prebtn = document.createElement("button");
			prebtn.setAttribute("class","carousel-control-prev");
			prebtn.setAttribute("type","button");
			prebtn.setAttribute("data-bs-target","#carouselExampleIndicators");
			prebtn.setAttribute("data-bs-slide","prev");
			var prespan1 = document.createElement("span");
			prespan1.setAttribute("class","carousel-control-prev-icon");
			prespan1.setAttribute("aria-hidden","true");
			var prespan2 = document.createElement("span");
			prespan2.setAttribute("class","visually-hidden");
			prespan2.innerText="Previous";
			prebtn.appendChild(prespan1);
			prebtn.appendChild(prespan2);
			
			//next button
			var nxtbtn = document.createElement("button");
			nxtbtn.setAttribute("class","carousel-control-next");
			nxtbtn.setAttribute("type","button");
			nxtbtn.setAttribute("data-bs-target","#carouselExampleIndicators");
			nxtbtn.setAttribute("data-bs-slide","next");
			var nxtspan1 = document.createElement("span");
			nxtspan1.setAttribute("class","carousel-control-next-icon");
			nxtspan1.setAttribute("aria-hidden","true");
			var nxtspan2 = document.createElement("span");
			nxtspan2.setAttribute("class","visually-hidden");
			nxtspan2.innerText="Next";
			nxtbtn.appendChild(nxtspan1);
			nxtbtn.appendChild(nxtspan2);
			
			//완성된 태그들 for문나와서 추가
			document.querySelector("#carouselExampleIndicators").appendChild(indi);
			document.querySelector("#carouselExampleIndicators").appendChild(imgdiv);
			document.querySelector("#carouselExampleIndicators").appendChild(prebtn);
			document.querySelector("#carouselExampleIndicators").appendChild(nxtbtn);
				
		}
	</script>


<!-- 	<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-label="Slide 1" aria-current="true"></button>
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true"> -->
                                           
                                           <!-- 이미지 수정하기 -->



<hr>
<hr>
<hr>
<hr>
원래 코드 이아래로
<hr>
<hr>
<hr>
<hr>
										
<div class="form-group">
	<input class="form-control form-control-user" type="file" multiple="multiple"
	name="product_detail_image" id="product_detail_image" onchange="setDetailImage2(event);">
</div>
<div id="images_container">

</div>

<script>
		function setDetailImage(event){
			for(var image of event.target.files){
				var reader = new FileReader();
				
				reader.onload = function(event){
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					document.querySelector("div#images_container").appendChild(img);
					console.log(document.querySelector("div#images_container"));
				};
				
				console.log(image);
				reader.readAsDataURL(image);
			}
		}
</script>










	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>


</body>
</html>