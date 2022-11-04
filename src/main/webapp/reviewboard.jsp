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
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
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
                </div>
                <div class="r_board">
                    <table class="tmp_table">
                    <thead >
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
                            <td  class="r_date">
                                15:28
                            </td>
                            <td class="r_like">
                                7
                            </td>
                        </tr>
                        <tr >
                            <td>
                                <span >변우경</span>
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
    
        
    </body>
    </html>