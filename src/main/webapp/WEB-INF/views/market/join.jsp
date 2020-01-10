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
   <style type="text/css">
        .img_wrap {
            width: 300px;
            margin-top: 50px;
        }
        .img_wrap img {
            max-width: 100%;
        }
 
    </style>
    <body>
	
	<%@ include file="../include/nav.jsp" %>	
		
		<!-- login section start -->
		<section class="login-wrapper">
			<div class="container">
				<div class="col-md-6 col-sm-8 col-md-offset-3 col-sm-offset-2">
					<form action="/market/testjoinProc" method="POST" enctype="multipart/form-data">
						<img class="img-responsive" alt="logo" src="/img/logo.png">
						<h2>마켓등록</h2>
					
						<input type="text" class="form-control input-lg" name="marketName" placeholder="Market Name" required="required">
						
						 <select class="form-control input-lg" name="${local.city}" required="required">
						    <option value="">지역선택</option>
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
						
						 <select class="form-control input-lg" name="${category.category}" required="required">
						    <option value="">카테고리</option>
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
					   
						
						
							 <!-- 도로명 주소 시작 -->
						 <div class="col-md-12">
							<div class="form-group float-right">
								<a style="cursor:pointer;" class="blog_btn" onClick="goPopup()">주소찾기</a>
							</div>
						</div>
							<input type="text" class="form-control input-lg" id="roadFullAddr" name="marketAddress" placeholder="도로명 주소 자동입력이 됩니다." required="required" readonly>  
						<!-- 도로명 주소 끝 -->
						
						<textarea style="resize: none;" class ="form-control input-lg" name="marketIntro" cols="40" rows="5" placeholder="마켓소개를 해주세요" required="required"></textarea>
						<input type="text" class="form-control input-lg" name="kakaoId" placeholder="KakaoId" required="required">
						<!-- 이미지 업로드 시작 -->
					
					    <!-- type="file",name="file" 은 단일 파일일때 -->
						<!-- <input id="input_img" type="file" name="file" placeholder="사진파일"> -->
						<!-- type="multiple"을 붙이면 다중 파일일때 -->
						<input id="input_imgs"  multiple="multiple" type="file" name="file"placeholder="사진파일" />
						
						<div>
							<div class="imgs_wrap" display="flex" >		
							</div>
					    </div>
				       <!-- 이미지 업로드 끝 -->
						<button type="submit" class="btn btn-primary">마켓 등록하기</button>
						<!-- <p>Have't Any Account <a href="/login">계정이 있으신가요? 로그인하러 가기</a></p> -->
					</form>
				</div>
			</div>
		</section>
		<!-- login section End -->	
		
		<!--  주소 api -->
		<%@ include file="../include/counter.jsp" %>	
		<%@ include file="../include/footer.jsp" %>
		<script language="javascript">

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

	// 사진 여러장 등록하기
	 var sel_files = [];
	 
     $(document).ready(function() {
         $("#input_imgs").on("change", handleImgsFilesSelect);
     }); 

     function handleImgsFilesSelect(e) {
         var files = e.target.files;
         var filesArr = Array.prototype.slice.call(files);

         filesArr.forEach(function(f) {
             if(!f.type.match("image.*")) {
                 alert("확장자는 이미지 확장자만 가능합니다.");
                 return;
             }

             sel_files.push(f);

             var reader = new FileReader();
             reader.onload = function(e) {
                 var img_html = "<img src=\"" + e.target.result + "\" />";
                 $(".imgs_wrap").append(img_html);
             }
             reader.readAsDataURL(f);
         });
     }

	
	
</script>
			
		 
    </body>
</html>