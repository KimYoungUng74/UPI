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
        
        <!-- 하단 네비게이션바 임포트 -->
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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">2020년도 지표 총괄 결과</h3>
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
                                <h4 class="card-title"><b>총괄 결과표</b></h4>
                                <p class="text-muted font-13">
                                    	이번년도 총괄 결과를 표로 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-center" rowspan="2">연번<br><br><br></th>
                                                <th class="text-center" rowspan="2">
                                                    	지표명<br><br><br> 
                                                </th>
                                                <th class="text-center" colspan="2">
                                                    	평가지표<br>
                                                </th>
                                                
                                                <th class="text-center" colspan="2">평가결과</th>
                                                
                                                <th class="text-center" rowspan="2">관련 사업<br><br><br></th>
                                                
                                                
                                                
                                            </tr>
                                            <tr>
                                                
                                                
                                                <th class="text-center">
                                                    	목표값<br>
                                                   
                                                </th>
                                                <th class="text-center">
                                                    	현재값<br>
                                                   
                                                </th>
                                               
                                               <th class="text-center">
                                                    	등급<br>
                                                   
                                                </th>
                                                <th class="text-center">
                                                    	달성도<br>
                                                    
                                                </th>
         
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">1</th>
                                                <td>취업률</td>
                                                <td class="text-center" >75.60</td>
                                                <td class="text-center" >67.90</td>                                                
                                                <td class="text-center" >B</td>
                                                <td class="text-center" >89.81</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
                                            </tr>
                                            
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">2</th>
                                                <td>유지취업률</td>
                                                <td class="text-center" >72.00</td>
                                                <td class="text-center" >72.21</td>
                                                <td class="text-center" >A</td>
                                                <td class="text-center" >100.29</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
                                            </tr>
                                            
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">3</th>
                                                <td>NCS/직무분석기반 교육여건 예산 집행률</td>
                                                <td class="text-center" >100.00</td>
                                                <td class="text-center" >99.90</td>
                                                <td class="text-center" >B</td>
                                                <td class="text-center" >99.99</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
                                            </tr>
                                            
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">4</th>
                                                <td>신입생충원률</td>
                                                <td class="text-center" >100.00</td>
                                                <td class="text-center" >100.00</td>
                                                <td class="text-center" >A</td>
                                                <td class="text-center" >100.00</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
                                            </tr>
                                            
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">5</th>
                                                <td>재학생충원률</td>
                                                <td class="text-center" >93.90</td>
                                                <td class="text-center" >93.30</td>
                                                <td class="text-center" >B</td>
                                                <td class="text-center" >99.36</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
                                            </tr>
                                            
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">6</th>
                                                <td>중도탈락률</td>
                                                <td class="text-center" >5.20</td>
                                                <td class="text-center" >5.78</td>
                                                <td class="text-center" >B</td>
                                                <td class="text-center" >89.97</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
                                            </tr>
                                            
                                            <tr class="font-20">
                                                <th class="text-center" scope="row">7</th>
                                                <td>전임교원확보율</td>
                                                <td class="text-center" >57.76</td>
                                                <td class="text-center" >62.07</td>
                                                <td class="text-center" >A</td>
                                                <td class="text-center" >107.46</td>
                                                <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td>
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
                <c:import url="../import/gradeStandard.jsp" charEncoding="UTF-8" >
    			</c:import>
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
	<c:import url="../import/javascript.jsp" charEncoding="UTF-8" >
    </c:import>
</html>