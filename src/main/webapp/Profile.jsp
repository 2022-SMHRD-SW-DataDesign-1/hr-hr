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
    <link rel="stylesheet" href="css/profile.css">
    <link rel="shortcut icon" href="imgs/instagram.png">
    <!-- 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">

</head>

<body>


    <section id="container">

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
                        <span class=sprite_small_search_icon></span>
                        <span>검색</span>
                    </div>
                </div>


                <div class="right_icons">
                    <a href="new_post.html">
                        <div class="sprite_camera_icon"></div>
                    </a>
                    <a href="login.html">
                        <div class="sprite_compass_icon"></div>
                    </a>
                    <a href="follow.html">
                        <div class="sprite_heart_icon_outline"></div>
                    </a>
                    <a href="profile.html">
                        <div class="sprite_user_icon_outline"></div>
                    </a>
                </div>
            </section>
        </header>


        <div id="main_container">

            <section class="b_inner">

                <div class="hori_cont">
                    <div class="profile_wrap">
                        <div class="profile_img">
                            <img src="imgs/thumb.jpeg" alt="착한호랑이">
                        </div>
                    </div>

                    <div class="detail">
                        <div class="top">
                            <div class="user_name">ADMIN</div>

                            <button type="button" class="btn btn-primary btn btn-light btn btn-outline-dark"
                                data-bs-toggle="modal" data-bs-target="#exampleModal">
                                정보수정
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">개인정보 수정</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                        </div>
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
                                                                <div class="col-md-12">
                                                                    <h4>Your Profile</h4>
                                                                    <hr>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <form>
                                                                        <div class="form-group row">
                                                                            <label for="username"
                                                                                class="col-4 col-form-label">이름*</label>
                                                                            <div class="col-8">
                                                                                <input id="username" name="username"
                                                                                    placeholder="Username"
                                                                                    class="form-control here"
                                                                                    required="required" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="name"
                                                                                class="col-4 col-form-label">패스워드</label>
                                                                            <div class="col-8">
                                                                                <input id="name" name="name"
                                                                                    placeholder="First Name"
                                                                                    class="form-control here"
                                                                                    type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="lastname"
                                                                                class="col-4 col-form-label">비밀번호 확인</label>
                                                                            <div class="col-8">
                                                                                <input id="lastname" name="lastname"
                                                                                    placeholder="Last Name"
                                                                                    class="form-control here"
                                                                                    type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="text"
                                                                                class="col-4 col-form-label">닉네임*</label>
                                                                            <div class="col-8">
                                                                                <input id="text" name="text"
                                                                                    placeholder="Nick Name"
                                                                                    class="form-control here"
                                                                                    required="required" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="select"
                                                                                class="col-4 col-form-label">Display
                                                                                Name public as</label>
                                                                            <div class="col-8">
                                                                                <select id="select" name="select"
                                                                                    class="custom-select">
                                                                                    <option value="admin">Admin</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="email"
                                                                                class="col-4 col-form-label">이메일*</label>
                                                                            <div class="col-8">
                                                                                <input id="email" name="email"
                                                                                    placeholder="Email"
                                                                                    class="form-control here"
                                                                                    required="required" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group row">
                                                                            <label for="website"
                                                                                class="col-4 col-form-label">Website</label>
                                                                            <div class="col-8">
                                                                                <input id="website" name="website"
                                                                                    placeholder="website"
                                                                                    class="form-control here"
                                                                                    type="text">
                                                                            </div>
                                                                        </div>
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
                                                                                class="col-4 col-form-label">New
                                                                                Password</label>
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

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                data-bs-dismiss="modal">닫기</button>
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