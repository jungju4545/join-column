<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>마켓등록</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
        
        <style>
        	#market_reg > input{
        		border-radius: 10px;
        	}
        </style>

    </head>
	
    <body>
	
	<%@ include file="../include/nav.jsp" %>	
		
		<!-- login section start -->
		<section class="login-wrapper">
			<div class="container">
				<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
					<form action="/market/update/${market.id}" method="POST" enctype="multipart/form-data">
						<img class="img-responsive" alt="logo" src="/img/logo.png">
						<h2>마켓수정</h2>
						<input type="text" class="form-control input-lg" name="marketName" value="${market.marketName }" placeholder="Market Name" required="required">
						
						 <select class="form-control input-lg" name="${local.city}" value=""  required="required">
						    <option value="${market.local.city}">${market.local.city}</option>
						    <option value="서울">서울</option>
						    <option value="경기도">경기도</option>
						    <option value="강원">강원</option>
						    <option value="부산">부산</option>
						    <option value="경남">경남</option>
						    <option value="전라도">전라도</option>
						    <option value="광주">광주</option>
						    <option value="#">#</option>
						    <option value="#">#</option>
						</select> 
						
						 <select class="form-control input-lg" name="${category.category}"   required="required">
						    <option value="${market.category.category }">${market.category.category }</option>
						    <option value="음식">음식</option>
						    <option value="의류">의류</option>
						    <option value="악세사리">악세사리</option>
						    <option value="#">#</option>
						    <option value="#">#</option>
						    <option value="#">#</option>
						    <option value="#">#</option>
						    <option value="#">#</option>
						    <option value="#">#</option>
						</select> 
					   <!-- 이미지 업로드 시작 -->
					
						<input id="input_img" type="file" name="file" value="${market.marketImage}"   placeholder="사진파일">
						
						<div class="img_wrap">
									<img id="img" />
						</div>
				<!-- 이미지 업로드 끝 -->
						
						
							 <!-- 도로명 주소 시작 -->
						 <div class="col-md-12">
							<div class="form-group float-right">
								<a style="cursor:pointer;" class="blog_btn"  onClick="goPopup()">주소찾기</a>
							</div>
						</div>
							<input type="text" class="form-control input-lg"  id="roadFullAddr" name="address" value="${market.marketAddress}" placeholder="도로명 주소 자동입력이 됩니다." required="required" readonly>  
						<!-- 도로명 주소 끝 -->
						
						<textarea style="resize: none;" class ="form-control input-lg" name="marketIntro"   cols="40" rows="5" placeholder="마켓소개를 해주세요" required="required">${market.marketIntro}</textarea>
						<input type="text" class="form-control input-lg" name="kakaoId" placeholder="KakaoId" value="${market.kakaoId}"  required="required">
						<button type="submit" class="btn btn-primary">마켓 수정하기</button>
						<!-- <p>Have't Any Account <a href="/login">계정이 있으신가요? 로그인하러 가기</a></p> -->

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
		
		<!--  주소 api -->
		<script language="javascript">
	 // opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	 //document.domain = "abc.go.kr";


	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("jusoPopup", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	// 주소 입력 버튼을 누르면 원하는 자료값을 콜백~!
	function jusoCallBack(roadFullAddr) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		//document.form.roadFullAddr.value = roadFullAddr;
		var juso=document.querySelector('#roadFullAddr');
		juso.value = roadFullAddr;
	}

	//사진 업로드
	var sel_file;
	$(document).ready(function() {
		$('#input_img').on("change", handleImgFileSelect);
	});
	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		filesArr.forEach(function(f) {
			if (!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}
			sel_file = f;
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#img').attr('src', e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}
	
</script>
		<%@ include file="../include/counter.jsp" %>	
		<%@ include file="../include/footer.jsp" %>	
		 
    </body>
</html>