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
        <style>
        	#market_reg > input{
        		border-radius: 10px;
        	}
        </style>
		

    </head>
	
    <body>
	
	<%@ include file="../../include/nav.jsp" %>	
		
		
		
		<!-- login section start//style="background:url(/img/slider-01.jpg) no-repeat" -->
		<section class="login-wrapper"  >
			<div class="container">
				<div class="col-md-12 col-sm-8 ">
					<form id="market_reg">
					<div class="col-md-12 col-sm-3" style="background:white;padding-top: 10px; padding-bottom: 10px;">
						<img class="img-responsive" alt="logo" src="/img/logo.png">
						<h3>피드 등록</h3>
						<div class="col-md-3 col-sm-3">
								 <img src="/img/microsoft.png" alt="" class="img-responsive">
								 <input type="file" class="form-control input-lg"/>
								</div>
								<div class="col-md-3 col-sm-3">
								 <img src="/img/microsoft.png" alt="" class="img-responsive">
								 <input type="file" class="form-control input-lg"/>
								</div>
								<div class="col-md-3 col-sm-3">
								 <img src="/img/microsoft.png" alt="" class="img-responsive">
								 <input type="file" class="form-control input-lg"/>
								</div>
								<div class="col-md-3 col-sm-3">
								 <img src="/img/microsoft.png" alt="" class="img-responsive">
								 <input type="file" class="form-control input-lg"/>
								</div>
							</div>
							
							<br/>
						<h6 style="text-align: left; margin-bottom: -1px">제목</h6>
						<input type="text" class="form-control input-lg" placeholder="User Name" />
						<h6 style="text-align: left; margin-bottom: -1px">내용</h6>
						<textarea class="form-control input-lg" placeholder="User Name" ></textarea>
					
						<button type="submit" class="btn btn-primary">등록하기</button>
					</form>
				</div>
			</div>
		</section>
		<!-- login section End -->	
		<%@ include file="../../include/counter.jsp" %>	
		<%@ include file="../../include/footer.jsp" %>	
		 
    </body>
</html>