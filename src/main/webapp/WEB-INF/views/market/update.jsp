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
	
	<%@ include file="../include/nav.jsp" %>	
		
		<!-- login section start//style="background:url(/img/slider-01.jpg) no-repeat" -->
		<section class="login-wrapper"  >
			<div class="container">
				<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
					<form id="market_reg">
						<img class="img-responsive" alt="logo" src="/img/logo.png">
						<h3>마켓 정보 수정</h3>
						<h6 style="text-align: left; margin-bottom: -1px">마켓이름</h6>
						<input type="text" class="form-control input-lg" placeholder="User Name" />
						<h6 style="text-align: left; margin-bottom: -1px">주소</h6>
						<input type="text" class="form-control input-lg" placeholder="User Name" />
						<h6 style="text-align: left; margin-bottom: -1px">SNS계정</h6>
						<input type="text" class="form-control input-lg" placeholder="User Name" />
						<h6 style="text-align: left; margin-bottom: -1px">연락처</h6>
						<input type="text" class="form-control input-lg" placeholder="User Name" />
						<h6 style="text-align: left; margin-bottom: -1px">Email</h6>
						<input type="text" class="form-control input-lg" placeholder="User Name" />
						<h6 style="text-align: left; margin-bottom: -1px">대표사진</h6>
						<input type="file" class="form-control input-lg"/>
						<button type="submit" class="btn btn-primary">수정하기</button>
					</form>
				</div>
			</div>
		</section>
		<!-- login section End -->	
		<%@ include file="../include/counter.jsp" %>	
		<%@ include file="../include/footer.jsp" %>	
		 
    </body>
</html>