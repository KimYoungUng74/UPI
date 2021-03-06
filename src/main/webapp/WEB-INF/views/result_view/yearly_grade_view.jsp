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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">연도별 평가 등급표</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">연도별 평가 등급을 확인하실 수 있습니다. </a>
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
                	<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<button class="btn btn-primary waves-effect waves-light btn-hwp-1" margin-left: 10px;
									type="button">
									<span class="btn-label"><i class="far fa-file-alt"></i></span>HWP로
									저장
								</button>
								&nbsp;
								<button
									class="btn btn-secondary waves-effect waves-light btn-print-1"
									type="button">
									<span class="btn-label"><i class="fas fa-print"></i></span>PDF저장/인쇄
								</button>

							</div>
						</div>
					</div>
                	
                    <div class="col-12">
                        <div class="card" id="all-list">
                        <!-- css링크들 임포트 -->
    					<c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
    					</c:import>
                            <div class="card-body">
                                <h4 class="card-title"><b>연도별 평가 등급</b></h4>
                                <p class="text-muted font-13">경민대학교</p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0" border="1" width="100%">
                                        <thead>
                                            <tr>
                                                <th class="text-center" rowspan="2">등급</th>
                                                <th class="text-center" rowspan="2">${two_year }년</th>
                                                <th class="text-center" rowspan="2">${one_year }년</th>
                                                <th class="text-center" rowspan="2">${year }년</th>
                                                
                                            </tr>
                                           
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${grade}" var="row" varStatus="status">                                       
	                                            <tr>
	                                                <th class="text-center" scope="row">${row}</th>                                           
	                                                                                  
	                                                 <c:choose>  
		                                                <c:when  test="${p_two_year[status.index] != 'NaN' }">                                  
		                                                	<td class="text-center" id="two_year_ago">${p_two_year_ago[status.index] } (${p_two_year[status.index] }%)</td>
		                                                </c:when >
		                                                
		                                                <c:otherwise>
		                                                	<td class="text-center" id="two_year_ago">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>  
		                                                <c:when  test="${p_one_year[status.index] != 'NaN' }">                                  
		                                                	<td class="text-center" id="one_year_ago">${p_one_year_ago[status.index] }  (${p_one_year[status.index] })%</td>
		                                                </c:when >
		                                                
		                                                <c:otherwise>
		                                                	<td class="text-center" id="two_year_ago">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>  
		                                                <c:when  test="${p_now[status.index]!= 'NaN' }">                                  
		                                                	<td class="text-center" id="now_year">${p_now_year[status.index]} (${p_now[status.index] }%)</td>

		                                                </c:when >
		                                                
		                                                <c:otherwise>
		                                                	<td class="text-center" id="now_year">0 (0%)</td>

		                                                </c:otherwise>
	                                                </c:choose>                                            
	                                                                                          
	                                            </tr>
                                            </c:forEach>
                                            
                                            <thead>
	                                            <tr>
	                                            	    
		                                            <th class="text-center font-weight-bold">합계</th>
		                                            <c:forEach items="${total}" var="tRow" varStatus="status">  
		                                                <th class="text-center">${tRow }</th>
		                                                
	                                                </c:forEach>
	                                                
	                                            </tr>
                                           
                                        	</thead>
                                        
                                        </tbody>
                                    </table>
                                    
                                </div> <!-- end table-responsive-->
                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                    
                    <div class="col-12">
                        <div class="card">
                        	<div class="card-body">
                        		<h4 class="card-title"><b>연도별 평가 등급추이</b></h4>
                        		<center>
			                    <div id="chart-area"> </div>
			                    <div id="container1" style="margin: 0 auto;"></div>
			               		</center>
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
                 <div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<button class="btn btn-primary waves-effect waves-light btn-hwp-2" margin-left: 10px;
									type="button">
									<span class="btn-label"><i class="far fa-file-alt"></i></span>HWP로
									저장
								</button>
								&nbsp;
								<button
									class="btn btn-secondary waves-effect waves-light btn-print-2"
									type="button">
									<span class="btn-label"><i class="fas fa-print"></i></span>PDF저장/인쇄
								</button>

							</div>
						</div>
					</div>
                    <div class="col-12" id="grade-view">
                    	<!-- css링크들 임포트 -->
    					<c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
    					</c:import>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><b>평가 등급 기준</b></h4>
                                <p class="text-muted font-13">
                                    	각 등급의 평가 기준을 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0" width="100%" border="1">
                                        <thead>
                                            <tr>
                                                <th class="text-center">등급</th>
                                                <th class="text-center">평 가 등 급 기 준</th>
                                                <th class="text-center">등급별 조치</th>
                                                
                                            </tr>
                                           
                                        </thead>
                                        <tbody>
										<!-- 출력 부분 -->
										<c:forEach items="${viewGrade}" var="gRow" varStatus="status">
                                            <tr>
                                                <th class="text-center" scope="row">A</th>
                                                <td>평가지표별 목표 값 대비 달성도 ${gRow.a_GRADE }% 이상</td>
                                                <td>${gRow.a_MEASURE }</td>                                           
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">B</th>
                                                <td>평가지표별 목표 값 대비 달성도 ${gRow.b_GRADE }% 이상</td>
                                                <td>${gRow.b_MEASURE }</td>                                            
                                            </tr>
                                            
                                            <tr>
                                                <th class="text-center" scope="row">D</th>
                                                <td>평가지표별 목표 값 대비 달성도 ${gRow.d_GRADE }% 미만</td>
                                                <td>${gRow.d_MEASURE }</td>                                            
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div> <!-- end table-responsive-->

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col-->
                </div>
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
	<!-- <script type="text/javascript">
	var container = document.getElementById('chart-area');
	var data = {
	    categories: ['A 등급', 'B 등급', 'D 등급'],
	    series: [
	        {
	            name: '${two_year}',
	            data: [${p_two_year[0]}, ${p_two_year[1]}, ${p_two_year[2]}]
	        },
	        {
	            name: '${one_year}',
	            data: [${p_one_year[0]}, ${p_one_year[1]}, ${p_one_year[2]}]
	        },
	        {
	            name: '${year}',
	            data: [${p_now[0]}, ${p_now[1]}, ${p_now[2]}]
	        }
	        
	    ]
	};
	var options = {
	    chart: {
	        width: 1160,
	        height: 650,
	        title: '',
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
	
	
	</script> -->
   <script>
   
   Highcharts.chart('container1', {
		chart : {
			type : 'column'
		},

		title : {
			text : ''
		},

		legend : {
			align : 'right',
			verticalAlign : 'middle',
			layout : 'vertical'
		},
		accessibility: {
	        announceNewData: {
	            enabled: true
	        }
	    },
		plotOptions: {
	        series: {
	            borderWidth: 0,
	            dataLabels: {
	                enabled: true,
	                format: '{point.y:.1f}%'
	            }
	        }
	    },
		xAxis : {
			categories : ['A 등급', 'B 등급', 'D 등급'],
			labels : {
				x : -10
			}
		},

		yAxis : {
			allowDecimals : false,
			title : {
				text : 'Amount'
			}
		},

		series : [{
			color: '#00a9ff',
            name: '${two_year}',
            data: [${p_two_year[0]}, ${p_two_year[1]}, ${p_two_year[2]}]
        },
        {
        	color: '#ffb840',
            name: '${one_year}',
            data: [${p_one_year[0]}, ${p_one_year[1]}, ${p_one_year[2]}]
        },
        {
        	color: '#ff5a46',
            name: '${year}',
            data: [${p_now[0]}, ${p_now[1]}, ${p_now[2]}]
        }]
	});
   </script>	 
	
   <script>
    $('.btn-print-1').click(function() {
		var win = window.open();
		self.focus();
		win.document.open();
		win.document.write(document.getElementById('all-list').innerHTML);
		win.print();
		win.close();
	});
    $('.btn-hwp-1').click(function() {
		var file = "hwp";
		var header = "<html>"+"<head><meta charset='utf-8'></head><body>";
		var footer = "</body></html>";
		var sourceHTML = header+document.getElementById("all-list").innerHTML+footer;
		var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);
		var fileDownload = document.createElement("a");
		document.body.appendChild(fileDownload);
		fileDownload.href = source;
		fileDownload.download = '경민대학교성과지표_연도별평가등급표.'+file;
		fileDownload.click();
		document.body.removeChild(fileDownload);
	});
    
    $('.btn-print-2').click(function() {
		var win = window.open();
		self.focus();
		win.document.open();
		win.document.write(document.getElementById('grade-view').innerHTML);
		win.print();
		win.close();
	});
    $('.btn-hwp-2').click(function() {
		var file = "hwp";
		var header = "<html>"+"<head><meta charset='utf-8'></head><body>";
		var footer = "</body></html>";
		var sourceHTML = header+document.getElementById("grade-view").innerHTML+footer;
		var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);
		var fileDownload = document.createElement("a");
		document.body.appendChild(fileDownload);
		fileDownload.href = source;
		fileDownload.download = '경민대학교성과지표_등급기준표.'+file;
		fileDownload.click();
		document.body.removeChild(fileDownload);
	});
    </script>
</html>