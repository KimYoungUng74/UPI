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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">2020년도 사업별 지표 등급</h3>
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
                                <h4 class="card-title"><b>사업별 지표 등급표</b></h4>
                                <p class="text-muted font-13">
                                    	사업별 지표 등급 갯수를 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0" border="1" width="100%">
                                        <thead>
                                            <tr>
                                                <th class="text-center">구분<br><br></th>
                                                <th class="text-center">대학중장기발전계획<br>BEST지표</th>
                                                <th class="text-center">기관평가 인증<br><br></th>
                                                <th class="text-center">혁신지원 AHA<br><br></th>
                                                <th class="text-center">사회맞춤형 LINC+<br><br></th>
                                                <th class="text-center">3유형<br><br></th>
                                                <th class="text-center">대학 전체<br><br></th>
                                                
                                            </tr>
                                           
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${viewAll}" var="row" varStatus="status">        
	                                            <tr>
	                                                <th class="text-center" scope="row">${row.GRADE }</th>
	                                                <td class="text-center">${row.IS_BEST }</td>
	                                                <td class="text-center">${row.IS_AGENCY }</td>
	                                                <td class="text-center">${row.IS_AHA }</td>
	                                                <td class="text-center">${row.IS_LINC }</td>
	                                                <td class="text-center">${row.IS_TYPE3 }</td>                                                                                    
	                                                <td class="text-center">${now_year[status.index].GC }</td>                                                                                    
	                                                                                                                                  
	                                            </tr>
                                             </c:forEach>
                                    
                                        </tbody>
                                        
                                        <thead>
                                            <tr>
                                                <th class="text-center font-weight-bold">합계</th>
                                                <th class="text-center">38</th>
                                                <th class="text-center">18</th>
                                                <th class="text-center">9</th>
                                                <th class="text-center">5</th>
                                                <th class="text-center">18</th>
                                                <th class="text-center">55</th>
                                                
                                            </tr>
                                           
                                        </thead>
                                    </table>
                                    
                                </div> <!-- end table-responsive-->								
                            </div> <!-- end card-body-->                       
                        </div> <!-- end card-->
                         <!-- START GRAPH -->
								<br><br>
								<!-- column -->
								<div class="card-body" style="float: left;">
									<div id="chart-best"></div>
								</div>
								<div class="card-body" style="float: left;">
									<div id="chart-devel"></div>
								</div>
								
								<div class="card-body" style="float: left;">
									<div id="chart-AHA"></div>
								</div>
								
								<div class="card-body" style="float: left;">
									<div id="chart-linc"></div>
								</div>
								
								<div class="card-body" style="float: left;">
									<div id="chart-type3"></div>
								</div>
								
								<div class="card-body" style="float: left;">
									<div id="chart-univ-all"></div>
								</div>
		
							<!-- END GRAPH -->
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
   
	<!-- Toast PIE Chart  -->
	<script type="text/javascript">
	/* BEST */
	var container = document.getElementById('chart-best');
	var data = {
	    categories: ['대학중장기발전계획 BEST'],
	    series: [
	        {
	            name: 'A등급',
	            data: 15
	        },
	        {
	            name: 'B등급',
	            data: 18
	        },
	        {
	            name: 'C등급',
	            data: 5
	        },
	        {
	            name: '기타',
	            data: 0
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '대학중장기발전계획 BEST'
	    },
	    tooltip: {
	        suffix: '개'
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

	tui.chart.pieChart(container, data, options);
	/* BEST */
	
	/* 기관평가 */
	var container = document.getElementById('chart-devel');
	var data = {
	    categories: ['기관인증 평가'],
	    series: [
	        {
	            name: 'A등급',
	            data: 11
	        },
	        {
	            name: 'B등급',
	            data: 6
	        },
	        {
	            name: 'C등급',
	            data: 1
	        },
	        {
	            name: '기타',
	            data: 0
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '기관인증 평가'
	    },
	    tooltip: {
	        suffix: '개'
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

	tui.chart.pieChart(container, data, options);
	/* 기관평가 */
	
	/* AHA */
	var container = document.getElementById('chart-AHA');
	var data = {
	    categories: ['혁신지원 AHA'],
	    series: [
	        {
	            name: 'A등급',
	            data: 5
	        },
	        {
	            name: 'B등급',
	            data: 3
	        },
	        {
	            name: 'C등급',
	            data: 0
	        },
	        {
	            name: '기타',
	            data: 1
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '혁신지원 AHA'
	    },
	    tooltip: {
	        suffix: '개'
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

	tui.chart.pieChart(container, data, options);
	/* AHA */
	
	/* linc+ */
	var container = document.getElementById('chart-linc');
	var data = {
	    categories: ['사회맞춤형 LINC+'],
	    series: [
	        {
	            name: 'A등급',
	            data: 2
	        },
	        {
	            name: 'B등급',
	            data: 2
	        },
	        {
	            name: 'D등급',
	            data: 1
	        },
	        {
	            name: '기타',
	            data: 0
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '사회맞춤형 LINC+'
	    },
	    tooltip: {
	        suffix: '개'
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

	tui.chart.pieChart(container, data, options);
	/* linc+ */
	
	/* 3유형 */
	var container = document.getElementById('chart-type3');
	var data = {
	    categories: ['3유형'],
	    series: [
	        {
	            name: 'A등급',
	            data: 11
	        },
	        {
	            name: 'B등급',
	            data: 6
	        },
	        {
	            name: 'D등급',
	            data: 1
	        },
	        {
	            name: '기타',
	            data: 0
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '3유형'
	    },
	    tooltip: {
	        suffix: '개'
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

	tui.chart.pieChart(container, data, options);
	/* 3유형 */

	/* 전체 */
	var container = document.getElementById('chart-univ-all');
	var data = {
	    categories: ['대학 전체'],
	    series: [
	        {
	            name: 'A등급',
	            data: 28
	        },
	        {
	            name: 'B등급',
	            data: 20
	        },
	        {
	            name: 'D등급',
	            data: 6
	        },
	        {
	            name: '기타',
	            data: 1
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '대학 전체'
	    },
	    tooltip: {
	        suffix: '개'
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

	tui.chart.pieChart(container, data, options);
	/* 대학전체 */
	
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
		fileDownload.download = '경민대학교성과지표_사업별지표등급표.'+file;
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