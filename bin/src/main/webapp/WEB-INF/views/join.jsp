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
		
		<!-- login section start -->
		<section class="login-wrapper">
			<div class="container">
				<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
					<form>
						<img class="img-responsive" alt="logo" src="/img/logo.png">
						<h2>회원가입</h2>
						<input type="text" class="form-control input-lg" placeholder="User Name">
						<input type="password" class="form-control input-lg" placeholder="Password">
						<input type="password" class="form-control input-lg" placeholder="Password Check">
						<input type="text" class="form-control input-lg" placeholder="Email">
						<button type="submit" class="btn btn-primary">Login</button>
						<p>Have't Any Account <a href="/login">계정이 있으신가요? 로그인하러 가기</a></p>
					</form>
				</div>
			</div>
		</section>
		<!-- login section End -->	
		<%@ include file="include/counter.jsp" %>	
		<%@ include file="include/footer.jsp" %>	
		 
    </body>
</html>