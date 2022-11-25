<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/Top10Ranking.css">
</head>

<body>
<%
MemberDTO info = (MemberDTO) session.getAttribute("info");

%>
	<section id="container">
		<header id="header">
			<section class="inner">

				<h1 class="logo">
					<a href="Main.jsp">
						<img src="imgs/로고.JPG">

					</a>
				</h1>
				<!-- 검색바 -->
				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>
				<!-- 오른쪽 메뉴아이콘 -->
				<div class="right_icons">

					<a href="profileAll.jsp?m_id=<%=info.getM_Id()%>"><img src="imgs/프로필.PNG"
							class="sprite_user_icon_outline"></a>
				</div>



			</section>
		</header>

	</section>


	<section id="main_container">
		<div class="ranking_box">
			<%
                    MemberDAO m_dao = new MemberDAO();
                    ArrayList<String> Ranking = m_dao.RankCount();
                    %>
			<div class="user_profile">
				<div class="profile_thumb">
				</div>
				<div class="detail">
					<div class="id r_text">Ranking</div>

				</div>
			</div>
			<!-- 월간 랭킹 시작 -->

			<article class="month_ranking">
				<header class="story_header">
					<div>월간랭킹</div>
					<div class="more"></div>
				</header>

				<div class="RANKING_BOARDER">
					<div class="thumb_user">
						<div class="profile_thumb">
							<img src="imgs/1등.PNG" alt="프로필사진">
						</div>
						<div class="detail">
							<div class="id"><%=Ranking.get(0) %></div>

						</div>

					</div>
					<div class="thumb_user">
						<div class="profile_thumb">
							<img src="imgs/2등.PNG" alt="프로필사진">
						</div>
						<div class="detail">
							<div class="id"><%=Ranking.get(1) %></div>

						</div>
					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
						<div class="profile_thumb">
							<img src="imgs/3등.PNG" alt="프로필사진">
						</div>
						<div class="detail">
							<div class="id"><%=Ranking.get(2) %></div>

						</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px; ">4</p>
							<div class="id">피카츄</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">5</p>
							<div class="id">도로로</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">6</p>
							<div class="id">야도란</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">7</p>
							<div class="id">케로로</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">8</p>
							<div class="id">파이리</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">9</p>
							<div class="id">멋쟁이 김하랑</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">10</p>
							<div class="id">10</div>

					</div>


				</div>
			</article>
			<!-- 월간 랭킹 끝 -->

			<!-- 데일리 랭킹 시작 -->
			<article class="daily_ranking">
				<header class="story_header">
					<div>일간랭킹</div>
					<div class="more"></div>
				</header>

				<div class="RANKING_BOARDER">
					<div class="thumb_user">
						<div class="profile_thumb">
							<img src="imgs/1등.PNG" alt="프로필사진">
						</div>
						<div class="detail">
							<div class="id">ImZzang</div>

						</div>

					</div>
					<div class="thumb_user">
						<div class="profile_thumb">
							<img src="imgs/2등.PNG" alt="프로필사진">
						</div>
						<div class="detail">
							<div class="id">kingrang</div>

						</div>
					</div>
					<div class="thumb_user">
						<div class="profile_thumb">
							<img src="imgs/3등.PNG" alt="프로필사진">
						</div>
						<div class="detail">
							<div class="id">ha@nef</div>

						</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px; ">4</p>
							<div class="id">피카츄</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">5</p>
							<div class="id">도로로</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">6</p>
							<div class="id">야도란</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">7</p>
							<div class="id">케로로</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">8</p>
							<div class="id">파이리</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">9</p>
							<div class="id">멋쟁이 김하랑</div>

					</div>
					<div class="thumb_user" style="margin-bottom:10px;">
					
							<p class = "top10" style ="margin-right:50px;">10</p>
							<div class="id">10</div>

					</div>
				</div>
			</article>
			<!-- 데일리 랭킹 끝 -->

		</div>
	</section>


</body>

</html>