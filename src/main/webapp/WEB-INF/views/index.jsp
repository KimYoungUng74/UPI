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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">경민대학교 성과지표 관리 시스템</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.do">메인페이지</a>
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
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <div class="card-group">
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">38개</h2>
                                    </div>
                                    <h6 class=" font-weight-normal mb-0 w-100 text-truncate">대학중장기발전계획 BEST</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <a class="btn btn-primary rounded-circle btn-circle" style="width: 25px; height: 25px;" href="javascript:void(0)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">18개</h2>
                                    </div>
                                    <h6 class=" font-weight-normal mb-0 w-100 text-truncate">기관 평가 인증</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <a class="btn btn-danger rounded-circle btn-circle " style="width: 25px; height: 25px;" href="javascript:void(0)"></a> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">9개</h2>
                                    </div>
                                    <h6 class=" font-weight-normal mb-0 w-100 text-truncate">혁신 지원 AHA</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <a class="btn btn-warning rounded-circle btn-circle " style="width: 25px; height: 25px;"
                                                            href="javascript:void(0)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">5개</h2>
                                    </div>
                                    <h6 class=" font-weight-normal mb-0 w-100 text-truncate">사회 맞춤형 LINC+</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <a class="btn btn-success rounded-circle btn-circle " style="width: 25px; height: 25px;"
                                                            href="javascript:void(0)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">5개</h2>
                                    </div>
                                    <h6 class=" font-weight-normal mb-0 w-100 text-truncate">3유형</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <a class="btn btn-secondary rounded-circle btn-circle " style="width: 25px; height: 25px;"
                                                            href="javascript:void(0)"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->
                <!-- *************************************************************** -->
                <!-- Start Sales Charts Section -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-8" id="a_grade" >
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">A등급 성과지표</h4>
                                    
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead style="background-color: rgb(124, 181, 236);">
                                            <tr class="border-0 text-white">
                                                <th class="font-14">성과지표명</th>
                                                <th class="font-14">관련부서</th>
                                                <th class="font-14">활용사업</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="border-top-0 px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0 px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8" id="b_grade" style="display: none;">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">B등급 성과지표</h4>
                                    
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead style="background-color: rgb(67, 67, 72);">
                                            <tr class="border-0 text-white">
                                                <th class="font-14">성과지표명</th>
                                                <th class="font-14">관련부서</th>
                                                <th class="font-14">활용사업</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8" id="d_grade" style="display: none;">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">D등급 성과지표</h4>
                                    
                                </div>
                                <div class="table-responsive">
                                    <table class="table no-wrap v-middle mb-0">
                                        <thead style="background-color: rgb(144, 237, 125); color:black; ">
                                            <tr class="border-0">
                                                <th class="font-14">성과지표명</th>
                                                <th class="font-14">관련부서</th>
                                                <th class="font-14">활용사업</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="border-top-0  px-2 py-4 font-14">취업률</td>
                                                <td class="border-top-0  px-2 py-4 font-14">입학취업처</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
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
	<c:import url="import/javascript.jsp" charEncoding="UTF-8" >
    </c:import>
    
    <script type="text/javascript">
    Highcharts.chart('container', {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: '등급별 성과지표, 2020'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            name: '비율',
            colorByPoint: true,
            data: [{
                name: 'A등급',
                y: 61.41,
                sliced: true,
                selected: true
            }, {
                name: 'B등급',
                y: 11.84
            }, {
                name: 'D등급',
                y: 10.85
            }, {
                name: '기타',
                y: 15.9
            }]
        }]
    });
    
    $('.highcharts-color-0').click(function(){
      
    	$('#d_grade').hide();
  	  	$('#b_grade').hide();
  	  	$('#a_grade').show();
  	});
    $('.highcharts-color-1').click(function(){
    	$('#d_grade').hide();
    	$('#a_grade').hide();
    	$('#b_grade').show();
    });
    $('.highcharts-color-2').click(function(){
    	$('#d_grade').show();
    	$('#a_grade').hide();
    	$('#b_grade').hide();
    });
    
    </script>
    
</html>