<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Tables</title>

    <!-- Fontfaces CSS-->
    <link href="/adminui/css/font-face.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="/adminui/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="/adminui/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="/adminui/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/adminui/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        

        <%@ include file="../include/adminui/nav.jsp" %>

        <!-- PAGE CONTAINER-->
        <div class="page-container">

            <!-- MAIN CONTENT-->
            <div class="main-content">
            <h1 style="margin-top:-80px;margin-left: 15px;">Market 관리</h1><br/><hr/>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        
                        
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">data table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md">
                                    	<input type="text" class="form-control input-lg" placeholder="User Name" />
                                    </div>
                                        
                                        <div class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2" name="time">
                                                <option selected="selected">전체</option>
                                                <option value="">승인대기</option>
                                                <option value="">승인완료</option>
                                                <option value="">반려</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i>마켓등록</button>

                                    </div>
                                </div>
                                <div class="table-responsive table-responsive-data2">
                                
                                
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>마켓이름</th>
                                                <th>신청사용자</th>
                                                <th>승인상태</th>
                                                <th>반려사유</th>
                                                <th>신청일</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        
                                        </table>
                                        
                                        
                                        <div style="width: 100%; height:70vh; overflow-y:auto; overflow-x: hidden;">
                                        <table class="table table-data2">
                                        
                                        
                                        <!-- 사용자 뿌리기 시작 -->
                                        
                                        
                                        <c:forEach begin="1" end="100">
                                        
                                        <tbody>
                                            <tr class="tr-shadow">
                                                <td>
                                                    <label class="au-checkbox">
                                                        <input type="checkbox">
                                                        <span class="au-checkmark"></span>
                                                    </label>
                                                </td>
                                                <td>
                                                	<button onclick="alert('test')" style="color:blue;">test Market</button></td>
                                                <td>
                                                    <span class="block-email">testuser</span>
                                                </td>
                                                <td>
                                                			<select name="job">
															    <option value="관리자">승인완료</option>
															    <option value="마케터">승인대기</option>
															    <option value="일반유저">반려</option>
															</select>
                                                </td>
                                                <td>마켓 정보 부족</td>
                                                <td>2018-09-27 02:12</td>
                                                
                                                <td>
                                                    <div class="table-data-feature" style="justify-content: flex-start;">
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="적용">
                                                            <i class="zmdi zmdi-check"></i>
                                                        </button>
                                                        <button class="item" data-toggle="tooltip" data-placement="top" title="삭제">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="spacer"></tr>
                                            
                                            
                                            
                                        </tbody>
                                        
                                        </c:forEach>
                                        
                                       
                                        
                                        <!-- 사용자 뿌리기 끝 -->
                                        
                                        
                                        
                                    </table>
                                    
                                     </div>
                                   
                                </div>
                                <!-- END DATA TABLE -->
                            </div>
                        </div>
                        <div class="row m-t-30">
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="/adminui/https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="/adminui/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="/adminui/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="/adminui/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="/adminui/vendor/slick/slick.min.js">
    </script>
    <script src="/adminui/vendor/wow/wow.min.js"></script>
    <script src="/adminui/vendor/animsition/animsition.min.js"></script>
    <script src="/adminui/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="/adminui/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="/adminui/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="/adminui/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="/adminui/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/adminui/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="/adminui/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="/adminui/js/main.js"></script>

</body>

</html>
<!-- end document-->

     