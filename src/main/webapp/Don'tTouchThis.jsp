
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
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<body>


	<h3>파일 등록 여러개 + 사진 미리보기</h3>
<!-- 미리볼 사진 추가해줄 영역 -->
	<div id="preview">
				<p>포스트 이미지 추가</p>
	</div>
<!-- 미리볼 사진 추가해줄 영역  종료 -->


	<form action="PolicyService" enctype="multipart/form-data"
		method="post" id="p_filelist1">
		<div class="form-group">
			제목 : <input type="text" name="p_title"> 
			내용 : <textarea rows="10" style="resize: none;" name="p_content"></textarea>
			<br> <input class="form-control form-control-user" type="file"
				multiple="multiple" name="product_detail_image"
				id="product_detail_image" onchange="setDetailImage(event);">
		</div>
		<input type="submit" value="정책게시글 등록">
	</form>


	<script>
		function setDetailImage(event){
						
			for(var image of event.target.files){
				var reader = new FileReader();
				
				reader.onload = function(event){
					let template = document.querySelector("div#preview");
					console.log(template.innerText);
					var img = document.createElement("img");
					console.log(template.innerText);
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					document.querySelector("div#preview").appendChild(img);
				};
				
				/* console.log(image);
				reader.readAsDataURL(image); */
			}
		}
	</script>

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
	name="product_detail_image" id="product_detail_image" onchange="setDetailImage(event);">
</div>
<div id="images_container"></div>

<script>
		function setDetailImage(event){
			for(var image of event.target.files){
				var reader = new FileReader();
				
				reader.onload = function(event){
					var img = document.createElement("img");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					document.querySelector("div#images_container").appendChild(img);
				};
				
				console.log(image);
				reader.readAsDataURL(image);
			}
		}
</script>











<!-- 이미 미리보기에 적용할 머찐 기능들 -->

	<div class="img_section">
		<div class="trans_inner">
			<div>
				<!-- 이미지 사진 넘기기-->
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="true">
					<!-- 이미지 넣을 수 정하기-->
					<div class="carousel-indicators">
						<%-- <%for(int i =0; i<p_files.length; i++){ %>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="<%=i+1 %>" class="active"
							aria-label="Slide <%= i+1 %>" aria-current="true"></button>
						<%} %> --%>
					</div>
					<!-- 캐러셀에 사진 넣기 시작-->
					<div class="carousel-inner">
						<%-- <%for(String temp : p_files){%>
						<div class="carousel-item active">
							<a href="policy_board.jsp"><img src="./imgs/<%=temp%>"></a>
						</div>
						<div class="carousel-item">
							<a href="policy_board.jsp"> <img src="imgs/국민취업지원제도2.png"
								alt="visual02"></a>
						</div>
						<%} %> --%>


						<!-- 이미지 왼쪽으로 넘기기-->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<!-- 이미지 오른쪽으로 넘기기-->
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>