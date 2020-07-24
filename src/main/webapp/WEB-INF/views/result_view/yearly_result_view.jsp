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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">전년도 대비 평가비교</h3>
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
                    <div class="col-12"  id="all-list">
                    	<!-- css링크들 임포트 -->
    					<c:import url="../import/csslink.jsp" charEncoding="UTF-8" >
    					</c:import>
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title"><b>전년도 대비 총괄 결과표</b></h4>
                                <p class="text-muted font-13">
                                    	총괄 결과표를 작년, 재작년과 비교하여 확인하실 수 있습니다.
                                </p>
					
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped mb-0" width="310" border="1">
                                        <thead>
                                            <tr>
                                                <th class="text-center" rowspan="2">연번<br><br><br></th>
                                                <th class="text-center" rowspan="2">
                                                    	지 표 명<br><br><br>
                                                    
                                                </th>
                                                <th class="text-center" colspan="3">
                                                    	등 급<br>
                                                    
                                                </th>
                                                
                                                <th class="text-center" colspan="3">달 성 도</th>
                                                
                                                
                                                
                                            </tr>
                                            <tr>
                                                
                                                
                                                <th class="text-center">
                                                    	${two_year }<br>
                                                   
                                                </th>
                                                <th class="text-center">
                                                    	${one_year }<br>
                                                   
                                                </th>
                                                <th class="text-center">
                                                    ${year }<br>
                                                    
                                                </th>
                                               <th class="text-center">
                                                    	${two_year }<br>
                                                   
                                                </th>
                                                <th class="text-center">
                                                    	${one_year }<br>
                                                    
                                                </th>
                                                <th class="text-center">
                                                    ${year }<br>
                                                    
                                                </th>
                                               
                
                                            </tr>
                                        </thead>
                                        <tbody>
 										<%-- <c:forEach items="${yearMap}" var="list" varStatus="status">
 											
											<c:forEach items="${list.value}" var="map">												
													<tr class="font-20">
		                                                <th class="text-center" scope="row">${map.INDICATORS_NUM }</th>
		                                                <td>${map.INDICATORS_NAME }</td>
		                                                <td class="text-center" ></td>
		                                                <td class="text-center" ></td>
		                                                <td class="text-center" >${map.GRADE }</td>
		                                                <td class="text-center" ></td>
		                                                <td class="text-center" ></td>
		                                                <td class="text-center" >${map.ACHIEVE_VAL }</td>
		                                                
		                                              
		                                            </tr>		                                        
											</c:forEach>
										</c:forEach> --%>
										<!-- 출력 부분 -->
										<c:forEach items="${now_year}" var="row" varStatus="status">
 											<tr>
		                                                <th class="text-center" scope="row">${status.count}</th>
		                                                <td>${row.INDICATORS_NAME }</td>
		                                                
		                                                
		                                                
		                                                <td class="text-center" >${two_year_ago[status.index].GRADE }</td>
		                                                <td class="text-center" >${one_year_ago[status.index].GRADE }</td>
		                                                <td class="text-center" >${row.GRADE }</td>
		                                                
		                                                <c:choose>
			                                                <c:when  test="${two_year_ago[status.index].ACHIEVE_VAL != null }">                                  
			                                                	<td class="text-center">${two_year_ago[status.index].ACHIEVE_VAL }</td>
			                                                </c:when >
			                                                
			                                                <c:otherwise>
			                                                	<td class="text-center">-</td>
			                                                </c:otherwise>
		                                               </c:choose>
		                                                
		                                                <c:choose>
			                                                <c:when  test="${one_year_ago[status.index].ACHIEVE_VAL != null }">                                  
			                                                	<td class="text-center">${one_year_ago[status.index].ACHIEVE_VAL }</td>
			                                                </c:when >
			                                                
			                                                <c:otherwise>
			                                                	<td class="text-center">-</td>
			                                                </c:otherwise>
		                                                </c:choose>
		                                                
		                                                <c:choose>
		                                                
			                                                <c:when  test="${row.ACHIEVE_VAL != null }">                                  
			                                                	<td class="text-center">${row.ACHIEVE_VAL }</td>
			                                                </c:when >
			                                                
			                                                <c:otherwise>
			                                                	<td class="text-center">-</td>
			                                                </c:otherwise>
		                                              
	                                               	 	</c:choose>  
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
		fileDownload.download = '경민대학교성과지표_전년도대비평가비교표.'+file;
		fileDownload.click();
		document.body.removeChild(fileDownload);
	});
    </script>
</html>