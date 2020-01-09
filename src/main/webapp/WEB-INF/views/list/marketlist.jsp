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
        
        <!-- CheckBox Design -->
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
		<!------ Include the above in your HEAD tag ---------->
        
        

    </head>
	
    <body>
	
		<%@ include file="../include/nav.jsp" %>
	
    <!-- Main jumbotron for a primary marketing message or call to action -->
	<section class="inner-banner" style="backend:#242c36 url(https://via.placeholder.com/1920x600)no-repeat;">
		<div class="container">
			<div class="caption">
				<h2>마켓 리스트</h2>
				<p><span>카테고리</span>별 <span>지역</span>별로 검색하세요</p>
			</div>
		</div>
	</section>
	
	
	<!-- 마켓리스트 시작 -->
		<!-- DB에 저장된 마켓리스트를 다 가지고 오기 (상태는 승인이 된것만) -->
		
		<section class="jobs">
			<div class="container">
				<div class="row heading">
					 <Form id="search_market" action="javascript:alert('현재페이지에 GET으로 전송')" Method="GET">
					<!-- <Form id="search_market" action="/market/search" Method="POST"> -->
						<span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;" onclick="category_sel()">전체</button>
        						<input type="checkbox" name="category" value="전체" class="hidden" checked />
   						 </span>
						<span class="button-checkbox" id="category">
        					<button  type="button"  class="btn" data-color="info" style="margin:3px;">의류</button>
        						<input type="checkbox"  class="hidden"  name="category" value="의류"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" class="btn" data-color="info" style="margin:3px;">액세서리</button>
        						<input type="checkbox" name="category" value="악세서리" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button" type="button" class="btn" data-color="info" style="margin:3px;">음식</button>
        						<input type="checkbox" name="category"  value="음식" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button"  type="button" class="btn" data-color="info" style="margin:3px;">화장품</button>
        						<input type="checkbox" name="category"  value="화장품" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button"  type="button" class="btn" data-color="info" style="margin:3px;">방향제</button>
        						<input type="checkbox"  name="category" value="방향제" class="hidden"  />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button"  type="button" class="btn" data-color="info" style="margin:3px;">캔들</button>
        						<input type="checkbox"  class="hidden" name="category" value="캔들" />
   						 </span>
   						 <span class="button-checkbox" id="category">
        					<button type="button"  type="button" class="btn" data-color="info" style="margin:3px;">기타</button>
        						<input   type="checkbox" class="hidden" name="category" value="기타"  />
   						 </span>
   						 <hr/>
   						 <!-- 이까지 카테고리 -->
   						 
   						 	<span class="button-checkbox" id="local">
        						<button type="button"  class="btn" data-color="danger"  style="margin:3px;" onClick="local_sel()">전체</button>
        						<input type="checkbox"  name="local" value="전체" class="hidden" checked />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" class="btn" data-color="danger"  style="margin:3px;">서울/경기</button>
        						<input type="checkbox" name="local" value="서울/경기"  class="hidden"  />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button"  class="btn" data-color="danger"  style="margin:3px;">강원</button>
        						<input type="checkbox"  class="hidden" name="local" value="강원" />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button"  class="btn" data-color="danger"  style="margin:3px;">충청</button>
        						<input type="checkbox" class="hidden" name="local" value="충청" />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" name="local" value="강원" class="btn" data-color="danger"  style="margin:3px;">경상</button>
        						<input type="checkbox" class="hidden" name="local" value="경상" />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" name="local" value="강원" class="btn" data-color="danger"  style="margin:3px;">전라</button>
        						<input type="checkbox" class="hidden" name="local" value="전라" />
    						</span>
    						<span class="button-checkbox" id="local">
        						<button type="button" name="local" value="강원" class="btn" data-color="danger"  style="margin:3px;">제주</button>
        						<input type="checkbox" class="hidden" name="local" value="제주" />
    						</span>
    						<hr/>
    						<input type="submit" id="clickAll" style="padding:3px 15px;border:1px solid black;border-radius: 5px;background: white;" value="검색" ></input>
    					</Form>
					</div>
				</div>
				<div class="companies">

<!-- 9건씩 출력하고 더보기 누를 시 더 불러옵시다! ajax 사용 -->
				<%-- <c:forEach begin="1" end="9"> --%>
			<div class="row">
				
				<c:forEach var="market" items="${markets}">
					<a href="#">
						<div class="col-md-4 col-sm-4">
							<div class="features-content">
							
							<a href="/market/detail/${market.id}">
								<span class="box1"><div style="width:100%;height:250px;"><img src="/upload/${market.marketImage }"   style="margin-bottom:10px;height:100%;max-width:100%;"></div></span>
							</a>
								<div class="company-content">
										<h3>${market.marketName}</h3>
										<p>
											<span class="company-name" style="color:grey;">
												<span style="font-size:13px;background:#01b5ff;color:white;padding:3px 15px 3px 15px;margin:0px 0px 10px 0px;display: inline-block;border-radius: 2px;">팔로우 : 3</span><br/>
												<i class="fa fa-map-marker"></i> ${market.local }<br/>
												<i class="fa fa-list"></i>${market.category }
											</span>
										</p>
									</div>
							</div>
						</div>
					 </a>		
					</c:forEach>
				</div>
				
				
					<input type="button" id="load" class="btn brows-btn" value="마켓 목록 더보기" />
				</div>
			
		</section>
		
		<!-- 마켓리스트 끝 -->
		
		<script>

		// 마켓록목 더 보기
	

//검색 누르면 해당하는 조건만 리스트에 뿌리기
//일단 카테고리, 지역에 체크된 값은 넘어옴.. : 전체버튼이 필요할까? 그냥 뿌리면 될거 같은데...
//$(document).ready는 이벤트를 발생시키는 함수
$(document).ready(function(){
	//$("#clickAll").click : 아이디가 clickAll을 클릭시에 일어남
	$("#clickAll").click(function(){
		//$("input[name=category]:checked") 체크된거
		//each >> 배열을 뜻함
		$("input[name=category]:checked").each(function(){
			var category= $(this).val();
				console.log("category :"+category);		
		});
		
		$("input[name=local]:checked").each(function(){
			var local= $(this).val();
				console.log("local :"+local);		
		});
		
	});
	var allData = { "category": category, "local": local };
	
});
// 여기서 ajax로 통신해서 해당하는 리스트만 뿌리기.

			//카테고리 전체
			function category_sel(){
					test =document.querySelectorAll('#category')
			}
			//지역 전체 선택
			function local_sel(){
				test =document.querySelectorAll('#local')
				
			}

		</script>

		<script src="/js/checkbox.js"></script>
		
		<%@ include file="../include/counter.jsp" %>	
		<%@ include file="../include/footer.jsp" %>
		
    </body>
</html>
