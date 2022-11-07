<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <article class="review">
                <div class="r_board_title">
                    <h2>리뷰 게시판 </h2>
                  
                    
                    <button type="button" class="btn btn-primary btn btn-info" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop">
                        게시글 등록
                    </button>
                    <!-- Modal -->
                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
                        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="staticBackdropLabel">게시물 등록</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="post_form_container">
                                        <form action="#" class="post_form">
                                            <div class="title">
                                                리뷰게시글 작성
                                            </div>
                                            <div class="preview">
                                                <div class="upload">
                                                    <div class="post_btn">
                                                        <div class="plus_icon">

                                                            <span></span>
                                                            <span></span>
                                                        </div>
                                                        <p>포스트 이미지 추가</p>
                                                        <canvas id="imageCanvas"></canvas>
                                                        <!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
                                                    </div>
                                                </div>
                                            </div>
                                            <p>
                                                <input type="file" name="photo" id="id_photo" required="required">
                                            </p>
                                            <p>
                                                <textarea name="content" id="text_field" cols="50" rows="5" placeholder="140자 까지 등록 가능합니다. #태그명 을 통해서 검색 태그를 등록할 수 있습니다.
						예시 : I # love # insta!"></textarea>

                                            </p>
                                            <input class="submit_btn" type="submit" value="저장">
                                        </form>

                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>  
                <div class="r_board">
                    <table class="tmp_table">
                        <thead>
                            <tr>
                                <th class="r_writer">작성자</th>
                                <th class="r_title">제목</th>
                                <th class="r_date">작성일시</th>
                                <th class="r_like">좋아요</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="tr_height">
                                <td>
                                    김하랑
                                </td>
                                <td class="r_title">
                                    <a href="#">뭐이리 작성했어?!</a>
                                </td>
                                <td class="r_date">
                                    15:28
                                </td>
                                <td class="r_like">
                                    10
                                </td>
                            </tr>
                            <tr class="tr_height">
                                <td class="td_height">
                                    <span class="r_writer">김영우</span>
                                </td>
                                <td class="r_title">
                                    <a href="#">뭐이리 작성했어?!</a>
                                </td>
                                <td class="r_date">
                                    15:28
                                </td>
                                <td class="r_like">
                                    9
                                </td>
                            </tr>
                            <tr class="tr_height">
                                <td class="td_height">
                                    <span class="r_writer">박상현</span>
                                </td>
                                <td class="r_title">
                                    <a href="#">뭐이리 작성했어?!</a>
                                </td>
                                <td class="r_date">
                                    15:28
                                </td>
                                <td class="r_like">
                                    8
                                </td>
                            </tr>
                            <tr class="tr_height">
                                <td>
                                    <span class="r_writer">허유리</span>
                                </td>
                                <td class="r_title">
                                    <a href="#">뭐이리 작성했어?!</a>
                                </td>
                                <td class="r_date">
                                    15:28
                                </td>
                                <td class="r_like">
                                    7
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>변우경</span>
                                </td>
                                <td class="r_title">
                                    <a href="#">뭐이리 작성했어?!</a>
                                </td>
                                <td class="r_date">

                                    15:28
                                </td>
                                <td class="r_like">
                                    6
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </article>




        </section>
        <script src="js/chat.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>

    </body>

    </html>