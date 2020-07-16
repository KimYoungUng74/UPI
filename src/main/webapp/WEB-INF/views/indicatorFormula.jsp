<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

<head>
	<!-- css링크들 임포트 -->
    <c:import url="import/csslink.jsp" charEncoding="UTF-8" >
    </c:import>
</head>

<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="ti-menu ti-close"></i></a>
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                        <!-- Logo icon -->
                        <a href="index.do">
                            <b class="logo-icon">
                                <!-- Dark Logo icon -->
                                <img src="<c:url value='/resources/template/assets/images/logo-icon.png'/>" alt="homepage" class="dark-logo" />
                                <!-- Light Logo icon -->
                                <img src="<c:url value='/resources/template/assets/images/logo-icon.png'/>" alt="homepage" class="light-logo" />
                            </b>
                            <!--End Logo icon -->
                            <!-- Logo text -->
                            <span class="logo-text">
                                <!-- dark Logo text -->
                                <img src="<c:url value='/resources/template/assets/images/logo-text.png'/>" alt="homepage" class="dark-logo" />
                                <!-- Light Logo text -->
                                <img src="<c:url value='/resources/template/assets/images/logo-light-text.png'/>" class="light-logo" alt="homepage" />
                            </span>
                        </a>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Toggle which is visible on mobile only -->
                    <!-- ============================================================== -->
                    <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)"
                        data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i
                            class="ti-more"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <!-- 상단 네비게이션바 임포트  -->
                <c:import url="import/navigationbar.jsp" charEncoding="UTF-8" >
    			</c:import>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        
        <!-- 하단 네비게이션바 임포트 -->
        <c:import url="import/sidebar.jsp" charEncoding="UTF-8" >
    	</c:import>
        
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">평가지표 산출식</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">경민대학교</a>
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
            <!-- *************************************************************** -->
			<!-- Start Scroll AND Grid  -->            
			<!-- *************************************************************** -->
             <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="position-relative mt-2" style="height: 70%; overflow: auto;">
                           <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><b>평가지표 산출식</b></h4>
                                <p class="text-muted font-13">
                                    	각 지표별 산출식을 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-center">연번</th>
                                                <th class="text-center">
                                                    	지표명
                                                </th>
                                                <th class="text-center">
                                                    	산출식
                                                </th>
                                                
                                            </tr>
                                        
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th class="text-center" scope="row">1</th>
                                                <td>취업률</td>
                                                <td>(취업자/취업대사장)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">2</th>
                                                <td>유지취업률</td>
                                                <td>[(1~4차)기준일 유지 건강보험 직장가입자 / 조사기준년 12월31일 건강보험 직장가입자]X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">3</th>
                                                <td>신입생충원율</td>
                                                <td>(정원내 입학자 수 / 정원 내 모집인원)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">4</th>
                                                <td>취업률</td>
                                                <td>(정원내 재학생 수 / 편제정원)X100</td>
                                                
                                            </tr>
                                           
                                            <tr>
                                                <th class="text-center" scope="row">5</th>
                                                <td>중도탈락률</td>
                                                <td>(제적학생 수 /재적학생 수)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">6</th>
                                                <td>NCS/직무분석기반 교육여건 예산 집행률</td>
                                                <td>(집행액 / 예산액)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">7</th>
                                                <td>전임교원 확보율</td>
                                                <td>[전임교원 수 / 교원법정정원(재학생기준)]X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">8</th>
                                                <td>취업률</td>
                                                <td>(취업자/취업대사장)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">9</th>
                                                <td>유지취업률</td>
                                                <td>[(1~4차)기준일 유지 건강보험 직장가입자 / 조사기준년 12월31일 건강보험 직장가입자]X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">10</th>
                                                <td>신입생충원율</td>
                                                <td>(정원내 입학자 수 / 정원 내 모집인원)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">11</th>
                                                <td>취업률</td>
                                                <td>(정원내 재학생 수 / 편제정원)X100</td>
                                                
                                            </tr>
                                           
                                            <tr>
                                                <th class="text-center" scope="row">12</th>
                                                <td>중도탈락률</td>
                                                <td>(제적학생 수 /재적학생 수)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">13</th>
                                                <td>NCS/직무분석기반 교육여건 예산 집행률</td>
                                                <td>(집행액 / 예산액)X100</td>
                                                
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">14</th>
                                                <td>전임교원 확보율</td>
                                                <td>[전임교원 수 / 교원법정정원(재학생기준)]X100</td>
                                                
                                            </tr>
                                        </tbody>
                                    </table>
                                </div> <!-- end table-responsive-->

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>
              </div>
			 <!-- *************************************************************** -->
			<!-- END Scroll AND Grid  -->            
			<!-- *************************************************************** -->
			
			<br>
                <!-- *************************************************************** -->
                <!-- Start GRID  -->            
                <!-- *************************************************************** -->
                <!--  -->
                
                <!-- *************************************************************** -->
                <!-- End GRID  -->
                <!-- *************************************************************** -->
                
                <br><br>
                <!-- *************************************************************** -->
                <!-- Start GRID  -->            
                <!-- *************************************************************** -->
                
                <!-- *************************************************************** -->
                <!-- End GRID  -->
                <!-- *************************************************************** -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center text-muted">
                All Rights Reserved by Adminmart. Designed and Developed by <a
                    href="https://wrappixel.com">WrapPixel</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    </body>
	<c:import url="import/javascript.jsp" charEncoding="UTF-8" >
    </c:import>
</html>