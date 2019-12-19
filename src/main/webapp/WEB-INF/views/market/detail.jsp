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

    </head>
	
    <body>

		<%@ include file="../include/nav.jsp" %>
	



	<section class="profile-detail">
		<div class="container">
			<div class="col-md-12">
				<div class="row">
					<div class="basic-information">
						<div class="col-md-3 col-sm-3">
						 <img src="/img/microsoft.png" alt="" class="img-responsive">
						</div>
						<div class="col-md-9 col-sm-9">
							<div class="profile-content">
									<h2>마켓이름<span>마켓 한줄 설명</span></h2>
									<span style="font-size:13px;background:#01b5ff;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">팔로우 : 3</span>
									<span style="font-size:13px;background:#da0833;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">수정하기</span><br/>
									<ul class="information">
										<li><span>주소:</span>부산광역시 부산진구 전포대로 1</li>
										<li><span>SNS:</span>insta : teat</li>
										<li><span>TEL:</span>010-7777-7777</li>
										<li><span>Mail:</span>info@google.com</li>
										<li><span>From:</span>2017.01.01</li>
									</ul>
								</div>
							</div>
							<br/>
							
						
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-user fa-fw"></i> About 마켓이름
								<span style="font-size:13px;background:#da0833;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">수정하기</span>
							</div>
												<!-- 마켓 이미지 -->
							<div class="col-md-12 col-sm-3" style="background:white;padding-top: 10px; padding-bottom: 10px;">
								<div class="col-md-3 col-sm-3">
								 <img src="/img/microsoft.png" alt="" class="img-responsive">
								</div>
								<div class="col-md-3 col-sm-3">
								 <img src="/img/microsoft.png" alt="" class="img-responsive">
								</div>
							</div>
						</div>
						
						<div class="panel panel-default">
							<div class="panel-heading">
								<i class="fa fa-leaf fa-fw"></i> 상품:
								<span style="font-size:13px;background:#da0833;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">추가하기</span>
							</div>
												<div class="col-md-12 col-sm-3" style="background:white;padding-top: 10px; padding-bottom: 10px;">

								<c:forEach begin="1" end="12">
									<div class="col-md-3 col-sm-3">
									 <img src="/img/microsoft.png" alt="" class="img-responsive">
									 <div style="text-align: center; font-size: 14px; font-weight: bold; color: gray;">상품이름</div>
									</div>					
								</c:forEach>
								
							</div>
						</div>
						
						
						
					<div class="row">
					<input type="button" class="btn brows-btn" value="상품 더보기" />
				</div>
						

					</div>
				</div>
			</div>
		</div>
	</section>

		<%@ include file="../include/counter.jsp" %>	
		
		
		<%@ include file="../include/footer.jsp" %>
		 
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
		<script src="/js/bootsnav.js"></script>
		<script src="/js/main.js"></script>
    </body>
</html>
