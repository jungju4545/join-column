<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Jober Desk | Responsive Job Portal Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- All Plugin Css --> 
		<link rel="stylesheet" href="/css/plugins.css">
		
		<!-- Style & Common Css --> 
		<link rel="stylesheet" href="/css/common.css">
        <link rel="stylesheet" href="/css/main.css">
        
        <!-- CheckBox Design -->
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
        
        

    </head>
	
    <body>
	
		<%@ include file="include/nav.jsp" %>
	
    <!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner" style="backend:#242c36 url(https://via.placeholder.com/1920x600)no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>마켓 리스트</h2>
				<p><span>카테고리</span>별 <span>지역</span>별로 검색하세요</p>
			</div>
		</div>
	</section>
	
	
	<!-- 마켓리스트 시작 -->
		
		<section class="jobs">
			<div class="container">
				<div class="row heading">
					<Form id="search_market" action="javascript:alert('현재페이지에 GET으로 전송')" Method="GET">
						<span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;" onclick="info_sel_all()">전체</button>
        						<input type="checkbox" class="hidden" checked />
   						 </span>
						<span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">의류</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">액세서리</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">푸드</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">화장품</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">방향제</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">캔들</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">기타</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <hr/><!-- 이까지 카테고리 -->
   						 	<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">전체</button>
        						<input type="checkbox" class="hidden" checked />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">서울/경기</button>
        						<input type="checkbox" class="hidden"  />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">강원</button>
        						<input type="checkbox" class="hidden"  />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">충청</button>
        						<input type="checkbox" class="hidden"  />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">경상</button>
        						<input type="checkbox" class="hidden"  />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">전라</button>
        						<input type="checkbox" class="hidden"  />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">제주</button>
        						<input type="checkbox" class="hidden"  />
    						</span>
    						<hr/>
    						<input type="submit" style="padding:3px 15px;border:1px solid black;border-radius: 5px;background: white;" value="검색"></input>
    					</Form>
					</div>
				</div>
				
				
				<div class="companies">

<!-- 9건씩 출력하고 더보기 누를 시 더 불러옵시다! ajax 사용 -->
				<c:forEach begin="1" end="9">

					<a href="#">
						<div class="col-md-4 col-sm-4">
							<div class="features-content">
								<span class="box1"><div style="width:100%;height:250px;"><img src="/img/행사용.jpeg"  style="margin-bottom:10px;height:100%;max-width:100%;"></div></span>
	
								<div class="company-content">
										<h3>마켓이름</h3>
										<p>
											<span class="company-name" style="color:grey;">
												<span style="font-size:13px;background:#01b5ff;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">팔로우 : 3</span><br/>
												<i class="fa fa-map-marker"></i> 부산광역시 동래구 온천장로 100<br/>
												<i class="fa fa-list"></i>#의류 #음식
											</span>
										</p>
									</div>
							</div>
						</div>
					</a>		
					
					</c:forEach>
			
	
				</div>
				<div class="row">
					<input type="button" class="btn brows-btn" value="마켓 목록 더보기" />
				</div>
			</div>
		</section>
		
		<!-- 마켓리스트 끝 -->
		
		<script>

			function info_sel_all(){
					test =document.querySelectorAll('#category')

				}
		
			function category_sel(){
					test =document.querySelectorAll('#category')
			}

			function local_sel(){

			}

		</script>

		<script src="/js/checkbox.js"></script>
		
		<%@ include file="include/counter.jsp" %>	
		
		
		<%@ include file="include/footer.jsp" %>
		
    </body>
</html>
