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

	<header id="header">
		<section class="h_inner">

			<h1 class="logo">
				<a href="index.html">
					<div class="sprite_insta_icon"></div>
					<div>
						<div class="sprite_write_logo"></div>
					</div>
				</a>
			</h1>

			<div class="search_field">
				<input type="text" placeholder="검색" tabindex="0">

				<div class="fake_field">
					<span class=sprite_small_search_icon></span> <span>검색</span>
				</div>
			</div>
            <div class="right_icons">
                <a href="NewPost.jsp"><img src="imgs/플러스.PNG"  class="sprite_camera_icon"></a>
                <a href="Login.jsp"><img src="imgs/로그인.PNG" class="sprite_compass_icon"></a>
                 <a href="Follow.jsp"><img src="imgs/팔로워.PNG" class="sprite_heart_icon_outline"></a>
                <a href="Profile.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
                <a href="Top10Ranking.jsp"><img src="imgs/랭킹버튼.PNG" class="sprite_user_icon_outline"></a>
                <a href="DM.jsp"> <img src="imgs/채팅.PNG" class="sprite_user_icon_outline"></a>
                <a href="ProfileEdit.jsp"><img src="imgs/프로필수정.PNG" class="sprite_user_icon_outline"></a>
                
            </div>

		</section>

	</header>

	<section id="main_container">
		<div class="ranking_box">
            <div class="user_profile">
                <div class="profile_thumb">
                    <img src="imgs/랭킹.PNG" class="rankingimg" alt="프로필사진">
                </div>
                <div class="detail">
                    <div class="id r_text">Ranking</div>
                   
                </div>
            </div>

            <article class="month_ranking">
                <header class="story_header">
                    <div>월간랭킹</div>
                    <div class="more"></div>
                </header>

                <div class="scroll_inner">
                    <div class="thumb_user">
                        <div class="profile_thumb">
                            <img src="imgs/1등.PNG" alt="프로필사진">
                        </div>
                        <div class="detail">
                            <div class="id">user1</div>
                            
                        </div>
                        
                    </div>
                    <div class="thumb_user">
                        <div class="profile_thumb">
                            <img src="imgs/2등.PNG" alt="프로필사진">
                        </div>
                        <div class="detail">
                            <div class="id">user2</div>
                            
                        </div>
                    </div>
                    <div class="thumb_user">
                        <div class="profile_thumb">
                            <img src="imgs/3등.PNG" alt="프로필사진">
                        </div>
                        <div class="detail">
                            <div class="id">user3</div>
                            
                        </div>
                        
                    </div>
                    
                </div>
            </article>

            <article class="daily_ranking">
                <header class="story_header">
                    <div>일간랭킹</div>
                    <div class="more"></div>
                </header>

                <div class="scroll_inner">
                    <div class="thumb_user">
                        <div class="profile_thumb">
                            <img src="imgs/1등.PNG" alt="프로필사진">
                        </div>
                        <div class="detail">
                            <div class="id">user1</div>
                            
                        </div>
                        
                    </div>
                    <div class="thumb_user">
                        <div class="profile_thumb">
                            <img src="imgs/2등.PNG" alt="프로필사진">
                        </div>
                        <div class="detail">
                            <div class="id">user2</div>
                            
                        </div>
                    </div>
                    <div class="thumb_user">
                        <div class="profile_thumb">
                            <img src="imgs/3등.PNG" alt="프로필사진">
                        </div>
                        <div class="detail">
                            <div class="id">user3</div>
                            
                        </div>
                        
                    </div>
                    
                </div>
            </article>
        </div>
	</section>

</body>
</html>