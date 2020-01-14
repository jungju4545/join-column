<%@page import="java.util.Optional"%>
<%@page import="com.helloflea.helloflea.model.Market"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- length함수 쓰려면 선언해줘야 함 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<section class="counter">
	<div class="container">
		<div class="col-md-3 col-sm-3">
			<div class="counter-text">
				<span aria-hidden="true" class="icon-briefcase"></span>
				<h3>1000</h3>
				<p>지금까지 진행된 행사</p>
			</div>
		</div>

		<div class="col-md-3 col-sm-3">
			<div class="counter-text">
				<span class="box1"><span aria-hidden="true"
					class="icon-expand"></span></span>
				<h3>3</h3>
				
				<p>등록된 마켓 수</p>
			</div>
		</div>

		<div class="col-md-3 col-sm-3">
			<div class="counter-text">
				<span class="box1"><span aria-hidden="true"
					class="icon-profile-male"></span></span>
				<h3>700+</h3>
				<p>회원 수</p>
			</div>
		</div>

		<div class="col-md-3 col-sm-3">
			<div class="counter-text">
				<span class="box1"><span aria-hidden="true" class="icon-sad"></span></span>
				<h3>802+</h3>
				<p>Happy Members</p>
			</div>
		</div>
	</div>
</section>