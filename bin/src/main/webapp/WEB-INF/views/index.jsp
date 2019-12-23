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
		


    </head>
	
    <body>
    
    <%@ include file="include/nav.jsp" %>	

		
		<!-- Main jumbotron for a primary marketing message or call to action -->
		<section class="main-banner" style="background:#242c36 url(img/slider-01.jpg) no-repeat">
			<div class="container">
				<div class="caption">
					<img src="img/logo_white.png" width="50%"/>
					<form>
						<fieldset>
							<div class="col-md-4 col-sm-4 no-pad">
								<input type="text" class="form-control border-right" placeholder="키워드 검색" />
							</div>
							<div class="col-md-3 col-sm-3 no-pad">
								<select class="selectpicker border-right">
								  <option>Experience</option>
								  <option>서울특별시</option>
								  <option>=========</option>
								  <option>강서구</option>
								  <option>강동구</option>
								  <option>=========</option>
								  <option>부산광역시</option>
								  <option>=========</option>
								  <option>해운대구</option>
								  <option>부산진구</option>
								  <option>=========</option>
								  <option>기타 등등</option>
								</select>
							</div>
							<div class="col-md-3 col-sm-3 no-pad">
								<select class="selectpicker">
								  <option>Select Category</option>
								  <option>음식</option>
								  <option>화장품</option>
								  <option>문구류</option>
								  <option>기타등등</option>
								</select>
							</div>
							<div class="col-md-2 col-sm-2 no-pad">
								<input type="submit" class="btn seub-btn" value="검색" />
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</section>
		
		
		
		<!-- 둘러보기 시작 -->
		
		<section class="features">
			<div class="container">
				<div class="row heading">
					<h2>HelloFlea 둘러보기</h2>
				</div>
				
				<a href="#">
					<div class="col-md-4 col-sm-4">
						<div class="features-content">
							<span class="box1"><img src="/img/icon_market1.png" width="25%" style="margin-bottom:10px;"></span>
							<h3>마켓</h3>
						</div>
					</div>
				</a>
				
				<a href="#">
					<div class="col-md-4 col-sm-4">
						<div class="features-content">
							<span class="box1"><img src="/img/icon_follow.png" width="25%" style="margin-bottom:10px;"></span>
							<h3>팔로잉 중인 마켓</h3>
						</div>
					</div>
				</a>
				
				<a href="#">
					<div class="col-md-4 col-sm-4">
						<div class="features-content">
							<span class="box1"><img src="/img/icon_event.png" width="25%" style="margin-bottom:10px;"></span>
							
							<h3>플리마켓 행사</h3>
						</div>
					</div>
				</a>				
			
			</div>
		</section>

		<!-- 둘러보기 끝 -->
		
		<!-- Top3 마켓 시작 -->
		
		<section class="jobs">
			<div class="container">
				<div class="row heading">
					<h2>신규 마켓 Top3</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do</p>
				</div>
				<div class="companies">

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
					
					<a href="#">
						<div class="col-md-4 col-sm-4">
							<div class="features-content">
								<span class="box1"><div style="width:100%;height:250px;"><img src="/img/microsoft.png"  style="margin-bottom:10px;height:100%;max-width:100%;"></div></span>
	
								<div class="company-content">
										<h3>마이크로솦흐트</h3>
										<p>
											<span class="company-name" style="color:grey;">
												<span style="font-size:13px;background:#01b5ff;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">팔로우 : 3</span><br/>
												<i class="fa fa-map-marker"></i> 서울특별시 종로구 종로1가 11<br/>
												<i class="fa fa-list"></i>#도자기
											</span>
										</p>
									</div>
							</div>
						</div>
					</a>
					
					<a href="#">
						<div class="col-md-4 col-sm-4">
							<div class="features-content">
								<span class="box1"><div style="width:100%;height:250px;"><img src="/img/google.png"  style="margin-bottom:10px;height:100%;max-width:100%;"></div></span>
	
								<div class="company-content">
										<h3>화장품가게</h3>
										<p>
											<span class="company-name" style="color:grey;">
												<span style="font-size:13px;background:#01b5ff;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">팔로우 : 3</span><br/>
												<i class="fa fa-map-marker"></i> 대전광역시 유성구 유성온천<br/>
												<i class="fa fa-list"></i>#화장품
											</span>
										</p>
									</div>
							</div>
						</div>
					</a>			

					
	
				</div>
				<div class="row">
					<input type="button" class="btn brows-btn" value="마켓 목록 더보기" />
				</div>
			</div>
		</section>
		
		<!-- Top3 마켓 끝 -->
		
		
		
		<!-- 진행중 행사 시작 -->
		
		<section class="jobs">
			<div class="container">
				<div class="row heading">
					<h2>진행중인 플리마켓 행사</h2>
				</div>
				<div class="companies">
					
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
					
	
				</div>
				<div class="row">
					<input type="button" class="btn brows-btn" value="진행중인 행사 더보기" />
				</div>
			</div>
		</section>
		
		<!-- 진행중 행사 끝 -->
		

		
		
		
		<%@ include file="include/counter.jsp" %>	
		
		
		<%@ include file="include/footer.jsp" %>	
		 

    </body>
</html>
