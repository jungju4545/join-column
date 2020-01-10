<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- HEADER MOBILE-->
<header class="header-mobile d-block d-lg-none">
	<div class="header-mobile__bar">
		<div class="container-fluid">
			<div class="header-mobile-inner">
				<a class="logo" href="/adminui/index.html"> <img
					src="/img/logo.png" alt="CoolAdmin" />
				</a>
				<button class="hamburger hamburger--slider" type="button">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<nav class="navbar-mobile">
		<div class="container-fluid">
			<ul class="navbar-mobile__list list-unstyled">

				<li><a href="/admintest/user"> <i
						class="fas fa-table"></i>유저관리
				</a></li>
				
				<li><a href="/admintest/event"> <i
						class="fas fa-table"></i>행사관리
				</a></li>
				
				<li><a href="/admintest/market"> <i
						class="fas fa-table"></i>마켓관리
				</a></li>



			</ul>
		</div>
	</nav>
</header>
<!-- END HEADER MOBILE-->
<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
	<div class="logo">
		<a href="/adminui/#"> <img src="/img/logo.png" alt="Cool Admin" />
		</a>
	</div>
	<div class="menu-sidebar__content js-scrollbar1">
		<nav class="navbar-sidebar">
			<ul class="list-unstyled navbar__list">


				<!--li class="active"동적으로 액티브 추가-->

				<li><a href="/admintest/user"> <i
						class="fas fa-table"></i>유저관리
				</a></li>
				
				<li><a href="/admintest/event"> <i
						class="fas fa-table"></i>행사관리
				</a></li>
				
				<li><a href="/admintest/market"> <i
						class="fas fa-table"></i>마켓관리
				</a></li>


			</ul>
			</li>

			</ul>
		</nav>
	</div>
</aside>
<!-- END MENU SIDEBAR-->