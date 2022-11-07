<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <!-- Facebook Meta Tags / 페이스북 오픈 그래프 -->
    <meta property="og:url" content="http://kindtiger.dothome.co.kr/insta">
    <meta property="og:type" content="website">
    <meta property="og:title" content="instagram">
    <meta property="og:description" content="instagram clone">
    <meta property="og:image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">
    .
    <!-- Twitter Meta Tags / 트위터 -->
    <meta name="twitter:card" content="instagram clone">
    <meta name="twitter:title" content="instagram">
    <meta name="twitter:description" content="instagram clone">
    <meta name="twitter:image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">

    <!-- Google / Search Engine Tags / 구글 검색 엔진 -->
    <meta itemprop="name" content="instagram">
    <meta itemprop="description" content="instagram clone">
    <meta itemprop="image" content="http://kindtiger.dothome.co.kr/insta/imgs/instagram.jpeg">


    <title>instagram</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/profile.css">
    <link rel="shortcut icon" href="imgs/instagram.png">
    
    <!-- 부트스트랩 -->
    

</head>

<body>


    <section id="container">

        <header id="header">
			<section class="inner">
                
				<h1 class="logo">
					<a href="Main.jsp">
						<div class="sprite_insta_icon"></div>
						<div class="sprite_write_logo"></div>
					</a>
				</h1>
                
				<div class="search_box">
					<input type="text" placeholder="검색" id="search-field">

					<div class="fake_field">
						<span class="sprite_small_search_icon"></span> <span>검색</span>
					</div>
				</div>
              
				<div class="right_icons">
					
					<a href="Login.jsp"><img src="imgs/로그인.PNG" class="sprite_compass_icon"></a>
					<a href="Profile.jsp"><img src="imgs/프로필.PNG" class="sprite_user_icon_outline"></a>
					<a href="Top10Ranking.jsp"><img src="imgs/랭킹버튼.PNG" class="sprite_user_icon_outline"></a>
					<a href="DM.jsp"> <img src="imgs/채팅.PNG" class="sprite_user_icon_outline"></a>
					
					
				</div>
				

			</section>

		</header>


        <div id="main_container">
			<!-- 프로필 영역 -->
            <section class="b_inner">
				<!-- 프로필 상단영역  -->
                <div class="hori_cont">
                <!-- 프로필 상세 -->
                    <div class="profile_wrap">
                    <!-- 프로필 유저 이미지 -->
                        <div class="profile_img">
                            <img src="imgs/thumb.jpeg" alt="착한호랑이">
                        </div>
                    </div>

                    <div class="detail">
                        <div class="top">
                        <!-- detail top user_name으로 접근 클래스 -->
                            <div class="user_name">ADMIN</div>
							<!-- 정보수정 팝업버튼  -->       <!-- 여기가 버튼 스타일 수정클래스 -->
                            <button type="button" class="btn btn-primary btn btn-light btn btn-outline-dark"
                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                                정보수정
                            </button>
							<!-- 팝업창 영역 -->
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <!-- 팝업창 크기 클래스 -->
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    <!-- 팝업창 머리글 -->
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">개인정보 수정</h1>
                                            <!-- 팝업창 닫기버튼 -->
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
                                        <!-- 팝업창 본문 -->
                                        <div class="modal-body">
                                            <!-- 넣는 공간 -->
                                            <div class="row">
                                                <div class="col-md-3 ">
                                                    <!-- 버튼 두개 -->
                                                    <div class="list-group ">
                                                        <a href="#"
                                                            class="list-group-item list-group-item-action active">프로필
                                                            수정</a>
                                                        <a href="#" class="list-group-item list-group-item-action">개인정보
                                                            수정</a>
                                                    </div>
                                                </div>
                                                <div class="col-md-9">
                                                    <div class="card">
                                                        <div class="card-body">
                                                            <div class="row">
                                                            <!-- 팝업창 상단글 -->
                                                                <div class="col-md-12">
                                                                    <h4>Your Profile</h4>
                                                                    <hr>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                <!-- 정보수정 입력 보내기 -->
                                                                    <form action="#">
                                                                        <div class="form-group row">
                                                                        <!-- 이름 수정영역 -->
                                                                            <label for="username" class="col-4 col-form-label">이름</label>
                                                                            <div class="col-8">
                                                                            <!-- 이름입력 -->
                                                                                <input id="username" name="username"
                                                                                    placeholder="Username"
                                                                                    class="form-control here"
                                                                                    required="required" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                        <!-- 패스워드 수정영역 -->
                                                                            <label for="name" class="col-4 col-form-label">패스워드</label>
                                                                            <div class="col-8">
                                                                            <!-- 패스워드 입력 -->
                                                                                <input id="name" name="name"
                                                                                    placeholder="First Name"
                                                                                    class="form-control here"
                                                                                    type="text">
                                                                            </div>
                                                                        </div>
                                                                        <!-- 패스워드 확인 -->
                                                                        <div class="form-group row">
                                                                            <label for="lastname"
                                                                                class="col-4 col-form-label">비밀번호 확인</label>
                                                                            <div class="col-8">
                                                                            <!-- 패스워드 확인 입력 -->
                                                                                <input id="lastname" name="lastname"
                                                                                    placeholder="Last Name"
                                                                                    class="form-control here"
                                                                                    type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                        <!-- 닉네입입력 -->
                                                                            <label for="text"
                                                                                class="col-4 col-form-label">닉네임*</label>
                                                                            <div class="col-8">
                                                                            <!-- 닉네입 수정입력 -->
                                                                                <input id="text" name="text"
                                                                                    placeholder="Nick Name"
                                                                                    class="form-control here"
                                                                                    required="required" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="select"
                                                                                class="col-4 col-form-label"> 유저유형</label>
                                                                            <div class="col-8">
                                                                                <select id="select" name="select"
                                                                                    class="custom-select">
                                                                                    <option value="admin">Admin</option>
                                                                                    <option value="user">user</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <!-- 프로필 소개글 수정 -->
                                                                        <div class="form-group row">
                                                                            <label for="publicinfo"
                                                                                class="col-4 col-form-label">Public
                                                                                Info</label>
                                                                            <div class="col-8">
                                                                                <textarea id="publicinfo"
                                                                                    name="publicinfo" cols="40" rows="4"
                                                                                    class="form-control"></textarea>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="newpass"
                                                                                class="col-4 col-form-label">새 비밀번호</label>
                                                                            <div class="col-8">
                                                                                <input id="newpass" name="newpass"
                                                                                    placeholder="New Password"
                                                                                    class="form-control here"
                                                                                    type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <div class="offset-4 col-8">
                                                                                <button name="submit" type="submit"
                                                                                    class="btn btn-primary">Update My
                                                                                    Profile</button>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- 수정창 -->
                                            </div>
                                            <!-- 넣는 공간 끝 -->
                                        </div>
									<!-- 팝업창 닫기 -->
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">닫기</button>
                                                <!-- 정보수정 완료버튼 -->
                                            <button type="button" class="btn btn-primary">정보 저장하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 모달 끝! -->
                            <a href="#" class="logout">로그아웃</a>
                        </div>

                        <ul class="middle">
                            <li>
                                <span>게시물</span>
                                3
                            </li>
                            <li>
                                <span>팔로워</span>
                                3
                            </li>
                            <li>
                                <span>팔로우</span>
                                3
                            </li>
                        </ul>
                        <p class="about">
                            <span class="nick_name">게시글</span>
                            <span class="book_mark">유용해요</span>
                        </p>

                    </div>
                </div>
				<!-- 게시글 영역  -->
                <div class="mylist_contents contents_container active">
                    <div class="pic">
                        <a href="#"><img src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"><img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                </div>

				<!-- 타 게시글 스크랩 영역 -->
                <div class="bookmark_contents contents_container">
                    <div class="pic">
                        <a href="#"><img src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"><img src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img03.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img01.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                    <div class="pic">
                        <a href="#"> <img src="imgs/img_section/img02.jpg" alt=""></a>
                    </div>
                </div>




            </section>
        </div>


    </section>


    <!--<script src="js/insta.js"></script>-->
    <script src="js/profile.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
</body>

</html>