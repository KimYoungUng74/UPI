<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

<head>
	<!-- css링크들 임포트 -->
    <c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
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
                <c:import url="../import/navigationbar.jsp" charEncoding="UTF-8" >
    			</c:import>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        
        <!-- 왼쪽 사이드바 임포트 -->
        <c:import url="../import/sidebar.jsp" charEncoding="UTF-8" >
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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">성과 지표 정의서</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">지표 정의서 출력</a>
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
                <!-- Start Sales Charts Section -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">성과지표 정의서</h4>
                                    
                                </div>
                                    <table class="table" border="1" style="text-align: center;">
                                        
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-2 font-14">관리번호</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">001</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">지표명</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14" colspan="3">취업률</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-4 font-14" rowspan="2">활용</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">BEST</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">기관평가</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">AHA</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">LINC+</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">3유형</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-4 font-14">O</td>
                                            	<td class="border-top-0 text-muted px-8 py-4 font-14">O</td>
                                            	<td class="border-top-0 text-muted px-8 py-4 font-14">O</td>
                                            	<td class="border-top-0 text-muted px-8 py-4 font-14">O</td>
                                            	<td class="border-top-0 text-muted px-8 py-4 font-14">O</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-2 font-14">기준일</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">2018년 12월</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">평가방법</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14" colspan="3">정량</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-2 font-14">수집방법</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">정보공시</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14">평가기준</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14" colspan="3">중장기발전계획 목표 측정값</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-2 font-14">관리부서</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14" colspan="5">입학취업처</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-2 font-14">산출식</td>
                                                <td class="border-top-0 text-muted px-8 py-4 font-14" colspan="5">(취업자/취업대상자)/100</td>
                                            </tr>
                                            <tr>
                                            	<td class="border-top-0 text-muted px-8 py-6 font-14">등급<br>기준</td>
                                                <td class="border-top-0 text-muted px-8 py-6 font-14" colspan="5">
                                                	<span>A(경민대학교 인증등급):평가지표별 목표 값 대비 달성도 100% 이상</span><br>
                                                	<span>B(잠재적 인증등급): 평가지표별 목표값 대비 달성도 70% 이상</span><br>
                                                	<span>D(부적합등급): 평가 지표별 목표값 대비 달성도 70% 이하</span><br>
                                                	<span>달성도 : 실시년도 실적값 / 전년도 실적값</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0 text-muted px-8 py-14 font-14" colspan="6" align="center">
                                                	<table class="table"border="1">
                                                		<tr>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">목표값</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14" colspan="3">75.6</td>
                                                		</tr>
                                                		<tr>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">현재값</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14" colspan="3">67.9</td>
                                                		</tr>
                                                		<tr>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">평가년도</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">2017년도</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">2018년도</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">2019년도</td>
                                                		</tr>
                                                		<tr>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">등급</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">A</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">B</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">B</td>
                                                		</tr>
                                                		<tr>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">달성도</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">100</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">95</td>
                                                			<td class="border-top-0 text-muted px-4 py-2 font-14">89.81</td>
                                                		</tr>
                                                	</table>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="border-top-0 text-muted px-8 py-2 font-14" colspan="3">
                                                	목표 및 현재 값 
                                                </td>
                                                <td class="border-top-0 text-muted px-8 py-2 font-14" colspan="3">
                                                	달성도
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0 text-muted px-8 py-16 font-14" colspan="3">
                                                	차트이미지
                                                </td>
                                                <td class="border-top-0 text-muted px-8 py-16 font-14" colspan="3">
                                                	차트이미지
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0 text-muted px-8 py-2 font-14">
                                                	비고 
                                                </td>
                                                <td class="border-top-0 text-muted px-8 py-2 font-14" colspan="5"></td>
                                            </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-12">
                        	<div class="card">
                            	<div class="card-body">
                           				<button class="btn btn-primary waves-effect waves-light" type="button" style="float: left;" onclick="location.href='report_view_list.do'"><span class="btn-label" ><i class="fas fa-align-justify"></i></span>목록으로</button>
                        				<button class="btn btn-primary waves-effect waves-light" type="button" style="float: right;"><span class="btn-label"><i class="far fa-file-alt"></i></span>HWP로 저장</button>
                        				<button class="btn btn-secondary waves-effect waves-light" type="button" style="float: right;"><span class="btn-label"><i class="fas fa-print"></i></span>인쇄</button>
                        			
                        		</div>
                        	</div>
                    	</div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Location and Earnings Charts Section -->
                <!-- *************************************************************** -->
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
	<c:import url="../import/javascript.jsp" charEncoding="UTF-8" >
    </c:import>
    
</html>