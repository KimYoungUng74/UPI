<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

<head>
	<!-- css링크들 임포트 -->
    <c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
    </c:import>
    
    <!-- TOAST UI CHART CDN LINK -->
     <link rel="stylesheet" href="https://uicdn.toast.com/tui.chart/latest/tui-chart.min.css">
    <script type='text/javascript' src='https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.min.js'></script>
    <script type='text/javascript' src='https://uicdn.toast.com/tui.chart/latest/raphael.js'></script>
    <script src="https://uicdn.toast.com/tui.chart/latest/tui-chart.min.js"></script>
	<!-- TOAST UI CHART CDN LINK END -->
	
	
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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">연도별 평가 등급</h3>
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
                <!-- *************************************************************** -->
                <!-- Start YEAR GRID  -->            
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><b>연도별 평가 등급표</b></h4>
                                <p class="text-muted font-13">
                                    	연도별 평가 등급을 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-center" rowspan="2">등급</th>
                                                <th class="text-center" rowspan="2">2018년</th>
                                                <th class="text-center" rowspan="2">2019년</th>
                                                <th class="text-center" rowspan="2">2020년</th>
                                                
                                            </tr>
                                           
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${now_year}" var="row" varStatus="status">                                       
	                                            <tr>
	                                                <th class="text-center" scope="row">${row.GRADE}</th>                                           
	                                                                                  
	                                                 <c:choose>  
		                                                <c:when  test="${two_year_ago[status.index].GRADE != null }">                                  
		                                                	<td class="text-center">${two_year_ago[status.index].GC }</td>
		                                                </c:when >
		                                                
		                                                <c:otherwise>
		                                                	<td class="text-center">0</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>  
		                                                <c:when  test="${one_year_ago[status.index].GRADE != null }">                                  
		                                                	<td class="text-center">${one_year_ago[status.index].GC }</td>
		                                                </c:when >
		                                                
		                                                <c:otherwise>
		                                                	<td class="text-center">0</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <td class="text-center">${row.GC}</td>
	                                                
	                                                                                          
	                                            </tr>
                                            </c:forEach>
                                        
                                        </tbody>
                                    </table>
                                    
                                </div> <!-- end table-responsive-->
								<!-- START GRAPH -->
								<br><br>
								<!-- column -->
			                    <div id="chart-area"></div>
			                    <!-- column -->
			                    
			                    
								
								<!-- END GRAPH -->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>             
                <!-- *************************************************************** -->
                <!-- End YEAR GRID  -->
                <!-- *************************************************************** -->
                
                <br><br>
                <!-- *************************************************************** -->
                <!-- Start GRADE GRID  -->            
                <!-- *************************************************************** -->
                <c:import url="../import/gradeStandard.jsp" charEncoding="UTF-8" >
    			</c:import>
                <!-- *************************************************************** -->
                <!-- End GRADE GRID  -->
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
   
	<!-- Toast Bar Chart  -->
	<script type="text/javascript">
	var container = document.getElementById('chart-area');
	var data = {
	    categories: ['A 등급', 'B 등급', 'D 등급'],
	    series: [
	        {
	            name: '2018',
	            data: [71.7, 28.3, 0]
	        },
	        {
	            name: '2019',
	            data: [54.3, 43.5, 2.2]
	        },
	        {
	            name: '2020',
	            data: [50.9, 36.4, 10.9]
	        },
	        
	    ]
	};
	var options = {
	    chart: {
	        width: 1160,
	        height: 650,
	        title: '연도별 등급 추이',
	        format: '1,000'
	    },
	    yAxis: {
	        title: '%',
	        min: 0,
	        max: 100
	    },
	    xAxis: {
	        title: '등급'
	    },
	    legend: {
	        align: 'top'
	    }
	};
	var theme = {
	    series: {
	        colors: [
	            '#83b14e', '#458a3f', '#295ba0', '#2a4175', '#289399',
	            '#289399', '#617178', '#8a9a9a', '#516f7d', '#dddddd'
	        ]
	    }
	};
	// For apply theme
	// tui.chart.registerTheme('myTheme', theme);
	// options.theme = 'myTheme';
	tui.chart.columnChart(container, data, options);
	
	
	</script>

   
</html>