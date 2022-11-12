<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
										<!-- ////////////////////////////////////////////////////////////////////////////////////// -->
									<!-- 리뷰게시글 정보 보내기 -->
									<%if(info != null){ %>
									<form action="ReviewService?p_num=<%=p_num %>" class="post_form" method="post" enctype="multipart/form-data">
										<div class="title">
										<input type="text" name= "r_title" placeholder="제목">
										</div>
										<div class="img_section">
											<div class="trans_inner">
												<div>
													<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
															<div class="preview">
																<div class="upload">
																	<div class="post_btn">
																		<div class="plus_icon">
																		</div>
																		<p>포스트 이미지 추가</p>
																		
																	</div>
																</div>
															</div>
													</div>
												</div>
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
				<%} %>
						<script>
							function setDetailImage(event){
								var count = 0 ; //애는 
								console.log(count);
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
										console.log(typeof count);
										if(count==0){
											btn.setAttribute("class","active");
											btn.setAttribute("aria-current","true");
										}else{
											btn.setAttribute("class"," ");
										}
										slide = "Slide "+(count+1)
										btn.setAttribute("aria-label",slide);
										
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
		
</body>
</html>