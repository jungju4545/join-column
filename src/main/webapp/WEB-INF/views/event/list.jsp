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
	
		<%@ include file="../include/nav.jsp" %>
	
    <!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner" style="backend:#242c36 url(https://via.placeholder.com/1920x600)no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>행사 리스트</h2>
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
        					<button type="button" class="btn" data-color="info" style="margin:3px;">행사예정</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">진행중</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">종료된행사</button>
        						<input type="checkbox" class="hidden"  />
   						 </span>

   						 <hr/>
   						 
    						<input type="submit" style="padding:3px 15px;border:1px solid black;border-radius: 5px;background: white;" value="적용"></input>
    					</Form>
					</div>
				</div>
				
				
				<section class="jobs">
			<div class="container">
				<div class="row heading">
					<h2>진행중인 플리마켓 행사</h2>
				</div>
				<div class="companies">
				
				<c:forEach begin="1" end="9">
					
					<a href="#">
						<div class="company-list">
							<div class="row">
								<div class="col-md-2 col-sm-2">
									<div class="company-logo">
										<img src="/img/행사용.jpeg" class="img-responsive" alt="" />
									</div>
								</div>
								<div class="col-md-10 col-sm-10">
									<div class="company-content">
										<h3>벡스코 플리마켓 다모여!<span class="full-time">진행중</span></h3>
										<p><span class="company-location"><i class="fa fa-map-marker"></i> 부산광역시 해운대구 우동 벡스코</span><span class="package"><i class="fa fa-calendar"></i>2019/12/24 ~ 2019/12/25</span></p>
									</div>
								</div>
							</div>
						</div>
					</a>
					
					</c:forEach>
					
					
	
				</div>
				<div class="row">
					<input type="button" class="btn brows-btn" value="행사 더보기" />
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
		
		<%@ include file="../include/counter.jsp" %>	
		
		
		<%@ include file="../include/footer.jsp" %>
		
    </body>
</html>
