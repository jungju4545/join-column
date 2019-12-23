<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>admin market detail</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
        <!-- All Plugin Css --> 
		<link rel="stylesheet" href="/css/plugins.css">
		
		<!-- Style & Common Css --> 
		<link rel="stylesheet" href="/css/common.css">
        <link rel="stylesheet" href="/css/main.css">

    </head>
	
    <body>
   

		<!-- Navigation Start  -->
		<nav class="navbar navbar-default navbar-sticky bootsnav">

			<div class="container">      
				<!-- Start Header Navigation -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
						<i class="fa fa-bars"></i>
					</button>
					<a class="navbar-brand" href="index.html"><img src="/img/logo.png" class="logo" alt=""></a>
				</div>
				<!-- End Header Navigation -->

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
							<li><a href="index.html">Home</a></li> 
							<li><a href="login.html">Login</a></li>
							<li><a href="companies.html">Companies</a></li> 
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse</a>
								<ul class="dropdown-menu animated fadeOutUp" style="display: none; opacity: 1;">
									<li class="active"><a href="browse-job.html">Browse Jobs</a></li>
									<li><a href="company-detail.html">Job Detail</a></li>
									<li><a href="resume.html">Resume Detail</a></li>
								</ul>
							</li>
						</ul>
				</div><!-- /.navbar-collapse -->
			</div>   
		</nav>
		<!-- Navigation End  -->
	
    <!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner" style="backend:#242c36 url(https://via.placeholder.com/1920x600)no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>Get your jobs</h2>
				<p>Get your Popular jobs <span>202 New job</span></p>
			</div>
		</div>
	</section>


	<section class="profile-detail">
	<form action="/admin/approval/${market.marketId }">
		<div class="container">
			<div class="col-md-12">
				<div class="row">
					<div class="basic-information">
						<div class="col-md-3 col-sm-3">
						
						<!-- 마켓 상세설명 : 여기에 승인이 필요한가???? -->
						<img src="/upload/${market.marketImage}" alt="" class="img-responsive"> 
						 <!-- <img src="/img/microsoft.png" alt="" class="img-responsive"> -->
						</div>
						<div class="col-md-9 col-sm-9">
							<div class="profile-content">
									<h2>Microsoft<span>Internet and computer software</span></h2>
									<p>Now Hiring(102)</p>
									<ul class="information">
										<li><span>Address:</span>${market.marketName}</li>
										<li><span>Website:</span>${market.kakaoId }</li>
										<li><span>소개:</span>${market.marketIntro }</li>
										<li>
										<span>권한</span>
										<input type="checkbox" name="status" value="A" onClick="doOpenCheck(this)">A
										<input type="checkbox" name="status" value="B" onClick="doOpenCheck(this)">B
										<input type="checkbox" name="status" value="C" onClick="doOpenCheck(this)">C</li>
										<li>
										<li><span>카테고리:</span>${market.category }</li>
									</ul>
								</div>
							</div>
						<ul class="social">
							<li><a href="" class="facebook"><i class="fa fa-facebook"></i>Facebook</a></li>
							<li><a href="" class="google"><i class="fa fa-google-plus"></i>Google Plus</a></li>
							<li><a href="" class="twitter"><i class="fa fa-twitter"></i>Twitter</a></li>
							<li><a href="" class="linkedin"><i class="fa fa-linkedin"></i>Linked In</a></li>
							<li><a href="" class="instagram"><i class="fa fa-instagram"></i>Instagram</a></li>
						</ul>
						
						
						<button type="submit" class="btn btn-primary">승인하기</button>
					</div>
				</div>
			</div>
		</div>
		</form>
	</section>

		<!-- footer start -->
		<footer>
			<div class="container">
				<div class="col-md-3 col-sm-6">
					<h4>Featured Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Latest Job</h4>
					<ul>
						<li><a href="#">Browse Jobs</a></li>
						<li><a href="#">Premium MBA Jobs</a></li>
						<li><a href="#">Access Database</a></li>
						<li><a href="#">Manage Responses</a></li>
						<li><a href="#">Report a Problem</a></li>
						<li><a href="#">Mobile Site</a></li>
						<li><a href="#">Jobs by Skill</a></li>
					</ul>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Reach Us</h4>
					<address>
					<ul>
					<li>1201, Murakeu Market, QUCH07<br>
					United Kingdon</li>
					<li>Email: Support@job.com</li>
					<li>Call: 044 123 458 65879</li>
					<li>Skype: job@skype</li>
					<li>FAX: 123 456 85</li>
					</ul>
					</address>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<h4>Drop A Mail</h4>
					<form>
						<input type="text" class="form-control input-lg" placeholder="Your Name">
						<input type="text" class="form-control input-lg" placeholder="Email...">
						<textarea class="form-control" placeholder="Message"></textarea>
						<button type="submit" class="btn btn-primary">Login</button>
					</form>
				</div>
				
				
			</div>
			<div class="copy-right">
			 <p>&copy;Copyright 2018 Jober Desk | Design By <a href="https://themezhub.com/">ThemezHub</a></p>
			</div>
		</footer>
		 
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/js/owl.carousel.min.js"></script>
		<script src="/js/bootsnav.js"></script>
		<script src="/js/main.js"></script>
    </body>
</html>
