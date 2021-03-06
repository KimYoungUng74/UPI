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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">사업별 지표 등급표 </h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">사업별 지표 등급 각각 확인하실 수 있습니다</a>
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
					
					<!-- 년도 선택 -->
                 	<div class="col-md-12">
                 	<div class="card">
                            <div class="card-body row">
                            	<div class="col-md-6">
                                	<span>년도 선택 </span>
                                	<select class="form-control" id="Years" onChange="location.href='business_grade_view.do?Years='+value">
                                			<option value="2022" <c:if test="${Years=='2022'}" >selected="selected"</c:if>>2022</option>
                                            <option value="2021" <c:if test="${Years=='2021'}" >selected="selected"</c:if>>2021</option>
                                            <option value="2020" <c:if test="${Years=='2020'}" >selected="selected"</c:if>>2020</option>
                                            <option value="2019" <c:if test="${Years=='2019'}" >selected="selected"</c:if>>2019</option>
                                            <option value="2018" <c:if test="${Years=='2018'}" >selected="selected"</c:if>>2018</option>
                                            <option value="2017" <c:if test="${Years=='2017'}" >selected="selected"</c:if>>2017</option>
                                    </select>
                                </div>
                                
                                <%-- <div class="col-md-2">
                                	<span>분기 선택</span>
                                	<select class="form-control" id="Divive" onChange="location.href='business_grade_view.do?Divive='+value" >
                                			<option value="0" <c:if test="${Divive==0}" >selected="selected"</c:if>>전체</option>
                                			<option value="1" <c:if test="${Divive==1}" >selected="selected"</c:if>>1분기</option>
                                            <option value="2" <c:if test="${Divive==2}" >selected="selected"</c:if>>2분기</option>
                                            <option value="3" <c:if test="${Divive==3}" >selected="selected"</c:if>>3분기</option>
                                            <option value="4" <c:if test="${Divive==4}" >selected="selected"</c:if>>4분기</option>
                                    </select>
                            	</div> --%>
                        	</div>         
                    </div>
                 	</div>
                 	
                    <div class="col-12">
                        <div class="card" id="all-list">
                        <!-- css링크들 임포트 -->
    					<c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
    					</c:import>
                            <div class="card-body">
                                <h4 class="card-title"><b>${Years }년도 사업별 지표 등급</b></h4>
                                <p class="text-muted font-13">
                                    	경민대학교
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
                                                <th class="text-center">후진학사업<br><br></th>
                                                <th class="text-center">대학 전체<br><br></th>
                                                
                                            </tr>
                                           
                                        </thead>
                                        <tbody>
             	 
                                        	
                                        	<c:forEach items="${grade}" var="row" varStatus="status">    
                                        		 
	                                           <tr>
	                                                <th class="text-center" scope="row">${row}</th>
	                                                
	                                                <c:choose>
	                                                	<c:when test="${p_IS_BEST[status.index] != 'NaN'}">
	                                                		<td class="text-center" id="IS_BEST">${viewAll[status.index].IS_BEST } (${p_IS_BEST[status.index]}%)</td>
	                                                	</c:when>
	                                                	
	                                                	<c:otherwise>
		                                                	<td class="text-center" id="IS_BEST">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>
	                                                	<c:when test="${p_IS_AGENCY[status.index] != 'NaN'}">
	                                                		<td class="text-center" id="IS_AGENCY">${viewAll[status.index].IS_AGENCY } (${p_IS_AGENCY[status.index]}%)</td>
	                                                	</c:when>
	                                                	
	                                                	<c:otherwise>
		                                                	<td class="text-center" id="IS_AGENCY">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>
	                                                	<c:when test="${p_IS_AHA[status.index] != 'NaN'}">
	                                                		<td class="text-center" id="IS_AHA">${viewAll[status.index].IS_AHA } (${p_IS_AHA[status.index] }%)</td>
	                                                	</c:when>
	                                                	
	                                                	<c:otherwise>
		                                                	<td class="text-center" id="IS_AHA">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>
	                                                	<c:when test="${p_IS_LINC[status.index] != 'NaN'}">
	                                                		<td class="text-center" id="IS_LINC">${viewAll[status.index].IS_LINC } (${p_IS_LINC[status.index] }%)</td>
	                                                	</c:when>
	                                                	
	                                                	<c:otherwise>
		                                                	<td class="text-center" id="IS_LINC">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>
	                                                
	                                                <c:choose>
	                                                	<c:when test="${p_IS_TYPE3[status.index] != 'NaN'}">
	                                                		<td class="text-center" id="IS_TYPE3">${viewAll[status.index].IS_TYPE3 } (${p_IS_TYPE3[status.index]}%)</td>  
	                                                	</c:when>
	                                                	
	                                                	<c:otherwise>
		                                                	<td class="text-center" id="IS_TYPE3">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>	
	                                                
	                                                <c:choose>
	                                                	<c:when test="${p_total[status.index] != 'NaN'}">
	                                                		<td class="text-center" id="IS_ALL">${total_grade[status.index]} (${p_total[status.index] }%)</td>   
	                                                	</c:when>
	                                                	
	                                                	<c:otherwise>
		                                                	<td class="text-center" id="IS_ALL">0 (0%)</td>
		                                                </c:otherwise>
	                                                </c:choose>                                                
                                                                                    
	                                            </tr>
                                             </c:forEach>
                                    
                                        </tbody>
                                        
                                        <thead>
                                            <tr>
                                            	    
	                                            <th class="text-center font-weight-bold">합계</th>
	                                            <c:forEach items="${total}" var="tRow" varStatus="status">  
	                                                <th class="text-center">${tRow } (100%)</th>
	                                                
                                                </c:forEach>

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
   
   <script>
      $( document ).ready( function() {
        $( 'td:empty' ).append( '0' );
      } );
    </script>
    
	<!-- Toast PIE Chart  -->
	<script type="text/javascript">
	/* BEST */
	var container = document.getElementById('chart-best');
	var data = {
	    categories: ['대학중장기발전계획 BEST'],
	    series: [
	        {
	            name: 'A등급',
	            data: ${viewAll[0].IS_BEST}
	        },
	        {
	            name: 'B등급',
	            data: ${viewAll[1].IS_BEST}
	        },
	        {
	            name: 'C등급',
	            data: ${viewAll[2].IS_BEST}
	        },
	        {
	            name: '기타',
	            data: ${viewAll[3].IS_BEST}
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
	            data: ${viewAll[0].IS_AGENCY}
	        },
	        {
	            name: 'B등급',
	            data: ${viewAll[1].IS_AGENCY}
	        },
	        {
	            name: 'C등급',
	            data: ${viewAll[2].IS_AGENCY}
	        },
	        {
	            name: '기타',
	            data: ${viewAll[3].IS_AGENCY}
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
	            data: ${viewAll[0].IS_AHA}
	        },
	        {
	            name: 'B등급',
	            data: ${viewAll[1].IS_AHA}
	        },
	        {
	            name: 'C등급',
	            data: ${viewAll[2].IS_AHA}
	        },
	        {
	            name: '기타',
	            data: ${viewAll[3].IS_AHA}
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
	            data: ${viewAll[0].IS_LINC}
	        },
	        {
	            name: 'B등급',
	            data: ${viewAll[1].IS_LINC}
	        },
	        {
	            name: 'D등급',
	            data: ${viewAll[2].IS_LINC}
	        },
	        {
	            name: '기타',
	            data: ${viewAll[3].IS_LINC}
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
	
	/* 후진학사업 */
	var container = document.getElementById('chart-type3');
	var data = {
	    categories: ['후진학사업'],
	    series: [
	        {
	            name: 'A등급',
	            data: ${viewAll[0].IS_TYPE3}
	        },
	        {
	            name: 'B등급',
	            data: ${viewAll[1].IS_TYPE3}
	        },
	        {
	            name: 'D등급',
	            data: ${viewAll[2].IS_TYPE3}
	        },
	        {
	            name: '기타',
	            data: ${viewAll[3].IS_TYPE3}
	        }
	    ]
	};
	var options = {
	    chart: {
	        width: 460,
	        height: 460,
	        title: '후진학사업'
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
	/* 후진학사업 */

	/* 전체 */
	var container = document.getElementById('chart-univ-all');
	var data = {
	    categories: ['대학 전체'],
	    series: [
	        {
	            name: 'A등급',
	            data: ${now_year[0].GC}
	        },
	        {
	            name: 'B등급',
	            data: ${now_year[1].GC}
	        },
	        {
	            name: 'D등급',
	            data: ${now_year[2].GC}
	        },
	        {
	            name: '기타',
	            data: ${now_year[3].GC}
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