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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">${year }년도 지표 총괄 결과</h3>
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
                 	
                    <div class="col-12" id="all-list">
                    <!-- css링크들 임포트 -->
    				<c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
    				</c:import>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><b>총괄 결과표</b></h4>
                                <p class="text-muted font-13">
                                    	이번년도 총괄 결과를 표로 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0" width="100%" border="1" align="center">
                                        <thead>
                                            <tr>
                                                <th class="text-center" rowspan="2">연번<br><br><br></th>
                                                <th class="text-center" rowspan="2">
                                                    	지 표 명<br><br><br> 
                                                </th>
                                                <th class="text-center" colspan="2">
                                                    	평 가 지 표<br>
                                                </th>
                                                
                                                <th class="text-center" colspan="2">평 가 결 과</th>
                                                
                                                <!-- <th class="text-center" rowspan="2">관 련 사 업<br><br><br></th> -->
                                                
                                                
                                                
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
                                        <!-- 출력 부분 -->
                                        <c:forEach var="row" items="${viewAll }" varStatus="status">
                                            <tr>
                                                <th class="text-center" scope="row">${status.count}</th>
                                                <td>${row.INDICATORS_NAME }</td>
                                                <td class="text-center" >${row.TARGET_VAL }</td>
                                                <td class="text-center"> ${row.PRESENT_VAL}</td>                                                
                                                <td class="text-center" > ${row.GRADE }</td>
                                                <c:choose>
                                                	<c:when  test="${row.ACHIEVE_VAL != null }">                                  
		                                                <td class="text-center">${row.ACHIEVE_VAL }</td>
		                                            </c:when >
		                                                
		                                            <c:otherwise>
		                                                <td class="text-center">-</td>
		                                        	</c:otherwise>
		                                        </c:choose>	
                                                <!-- <td class="text-center"><div class="popover-icon">
                                                        <a class="btn btn-primary rounded-circle btn-circle font-12" href="javascript:void(0)">B</a>
                                                        <a class="btn btn-danger rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">E</a>
                                                        <a class="btn btn-cyan rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">A</a>
                                                        <a class="btn btn-success rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">L</a>
                                                        <a class="btn btn-warning rounded-circle btn-circle font-12 popover-item" href="javascript:void(0)">G</a>
                        
                                                    </div></td> -->
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
		fileDownload.download = '경민대학교성과지표_총괄결과표.'+file;
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