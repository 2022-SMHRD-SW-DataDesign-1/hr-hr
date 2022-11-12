<%@page import="java.math.BigDecimal"%>
<%@page import="com.smhrd.model.ReviewDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.ReviewDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/review_board.css">
<link rel="stylesheet" href="css/new_post.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/detail-page.css">
<link rel="stylesheet" href="css/slide.css" />
       
</head>

<body>
	<%
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<%
	ReviewDAO r_dao = new ReviewDAO();
	BigDecimal p_num = new BigDecimal(request.getParameter("p_num"));

	ArrayList<ReviewDTO> rList = r_dao.reviewShow(p_num);
	
	%>
	<section id="container">


		<header id="header">
			<section class="inner">

				<h1 class="logo">
					<a href="Main.jsp"> <img src="imgs/로고.JPG">

					</a>
				</h1>
				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>

				<div class="right_icons">

					<a href="Login.jsp"><img src="imgs/로그인.PNG"
						class="sprite_compass_icon"></a> <a href="profileAll.jsp"><img
						src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>

				</div>


			</section>

		</header>
		<!-- 리뷰 게시글 영역 -->
		<article class="review">
			<div class="r_board_title">
				<h2>리뷰 게시판</h2>
				<%if (info != null) {%>
				<!-- 리뷰 등록 버튼 -->
				<!-- 여기가 버튼스타일 클래스  -->
				<button type="button" class="btn btn-primary btn btn-info"
					data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					리뷰 등록</button>
				<%}%>
				<!-- 팝업창영역 -->
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<!-- 팝업창 크기 클래스 -->
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<!-- 팝업창 머리글 -->
							<div class="modal-header">
								<h1 class="modal-title fs-5" id="staticBackdropLabel">게시물 등록</h1>
								<!-- 팝업창 닫기 -->
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<!-- 팝업창 본문 -->
							<div class="modal-body">
								<div class="post_form_container">
								
								
								
								<!-- ////////////////////////////////////////////////////////////////////////////////////// -->
									<!-- 리뷰게시글 정보 보내기 -->
									<%if(info != null){ %>
									<form action="ReviewService?p_num=<%=p_num %>" class="post_form" method="post" enctype="multipart/form-data">
										<div class="title">
										<input type="text" name= "r_title" placeholder="제목">
										</div>
										<div class="img_section">
											<div class="slide slide_wrap">
										      	<div id="slide_item0" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item1" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item2" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item3" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
										      	<div id="slide_item4" class="slide_item">최대 5장 까지 사진을 추가할 수 있습니다!</div>
												<div class="slide_prev_button slide_button">◀</div>
      											<div class="slide_next_button slide_button">▶</div>
      											<ul class="slide_pagination"></ul>
											</div>
										</div>
										
										
										<p>
										<!-- 리뷰 게시글사진 첨부 -->
										<input class="form-control form-control-user" type="file" multiple="multiple"
										name="r_filename" id="product_detail_image" onchange="setDetailImage(event);">
										</p>
										<p>
										<!-- 리뷰 글추가 -->
										<textarea name="r_content" id="text_field" cols="50" rows="5" placeholder="140자 까지 등록 가능합니다."></textarea>
										</p>
										<!-- 리뷰등록 -->
										<input class="submit_btn" type="submit" value="작성">
									</form>
									<script src="js/slide.js"></script>
				<%} %>
										<script>
											var  count = 0;
											/* document.querySelector(".slide.slide_wrap").innerHTML=""; */
												function setDetailImage(event){
													for(var image of event.target.files){
														var reader = new FileReader();
														
														reader.onload = function(event){
															var img = document.createElement("img");
															img.setAttribute("src", event.target.result);
															console.log(count);
															document.querySelector("#slide_item"+count).innerText="";
															document.querySelector("#slide_item"+count).appendChild(img);
															count +=1;
														};
														
														reader.readAsDataURL(image);
													}
												}
										</script>

   										

						<!-- ////////////////////////////////////////////////////////////////////////////////////// -->

								</div>
							</div>
							<div class="modal-footer">
								<!-- 팝업창 닫기 -->
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 리뷰게시판 영역 -->
			<div class="r_board">
				<table class="tmp_table">
					<!-- 게시판 머리글 -->
					<thead>
						<tr>
							<th class="r_writer">작성자</th>
							<th class="r_title">제목</th>
							<th class="r_date">작성일시</th>
							<th class="r_like">좋아요</th>
						</tr>
					</thead>
					<!-- 게시판 본문 -->
					<tbody>
						<%if (rList != null) {%>

						<%for (ReviewDTO rdto : rList) {%>
						<tr class="tr_height">
							<td><%=rdto.getM_id()%></td>
							<td class="r_title"><a
								href="review.jsp?p_num=<%=rdto.getP_num()%>&r_num=<%=rdto.getR_num()%>"><%=rdto.getR_title()%></a>
							</td>
							<td class="r_date"><%=rdto.getR_date()%></td>
							<td class="r_like"><%=rdto.getR_like()%></td>
						</tr>

						<%}%>

						<%}%>
					</tbody>
				</table>
			</div>
		</article>




	</section>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
		

</body>

</html>