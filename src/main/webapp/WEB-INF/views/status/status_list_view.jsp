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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">사업별 현황</h3>
                        
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
                            <div class="card-body row">
                            	<div class="col-md-6">
                                	<span>년도 선택</span>
                                	<select class="form-control" id="Years" onChange="location.href='status_list_view.do?Years='+value">
                                			<option value="2022" <c:if test="${Years=='2022'}" >selected="selected"</c:if>>2022</option>
                                            <option value="2021" <c:if test="${Years=='2021'}" >selected="selected"</c:if>>2021</option>
                                            <option value="2020" <c:if test="${Years=='2020'}" >selected="selected"</c:if>>2020</option>
                                            <option value="2019" <c:if test="${Years=='2019'}" >selected="selected"</c:if>>2019</option>
                                            <option value="2018" <c:if test="${Years=='2018'}" >selected="selected"</c:if>>2018</option>
                                            <option value="2017" <c:if test="${Years=='2017'}" >selected="selected"</c:if>>2017</option>
                                    </select>
                                </div>
                        	</div>
                    	</div>
                    </div>
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                            	<ul class="nav nav-pills bg-nav-pills nav-justified mb-3">
                                    <li class="nav-item">
                                        <a href="#all_tab" data-toggle="tab" aria-expanded="true" class="nav-link active">
                                            <i class="mdi mdi-home-variant d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">전체 현황</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#BEST_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-account-circle d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">대학중장기 발전계획 BEST</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#AGENCY_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">기관평가인증 현황</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#AHA_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">혁신지원 AHA 현황</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#LINC_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">사회맞춤형 LINC+ 현황</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#TYPE3_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">3유형 현황</span>
                                        </a>
                                    </li>
                                </ul>
                            	
                                <div class="d-flex align-items-center mb-4">
                                    <div id="container" class="chart1" style="margin: 0 auto"></div>
                                </div>
                                
                                <div class="tab-content">
                                    <div class="tab-pane show active" id="all_tab">
										<div class="table-responsive">
											<div class="d-flex align-items-center row">
												<c:forEach var="dto" items="${StatusDTOs}">
													<div class="col-md-4">
														<div class="card">
															<div class="card-body bigcard" onclick="location.href='report_view.do?INDICATORS_NUM=${dto.INDICATORS_NUM}'">
																<span class="badge badge-info">${dto.INDICATORS_NUM}</span>&nbsp;&nbsp;&nbsp;
																<span class="font-16">${dto.INDICATORS_NAME}</span>
																<c:choose>
																	<c:when test="${dto.GRADE=='A'}">
																		<button type="button"
																			class="btn btn-success btn-circle btn-sm"
																			style="float: right;">A</button>
																	</c:when>
																	<c:when test="${dto.GRADE=='B'}">
																		<button type="button"
																			class="btn btn-primary btn-circle btn-sm"
																			style="float: right;">B</button>
																	</c:when>
																	<c:when test="${dto.GRADE=='D'}">
																		<button type="button"
																			class="btn btn-warning btn-circle btn-sm"
																			style="float: right;">D</button>
																	</c:when>
																	<c:otherwise>
																	</c:otherwise>
																</c:choose>
																<div class="row mb-3 align-items-center mt-1 mt-5">
																	<div class="col-4 text-right">
																		<span class="font-14">목표값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.TARGET_VAL.split(":")[0])}</span>
																	</div>
																</div>
																<div class="row mb-3 align-items-center">
																	<div class="col-4 text-right">
																		<span class="font-14">현재값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div
																			<c:choose>
																				<c:when test="${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0]) >= 1}">
																					class="progress-bar progress-bar-striped bg-success"
																				</c:when>
																				<c:otherwise>
																					class="progress-bar progress-bar-striped progress-bar-animated"
																				</c:otherwise>
																			</c:choose>
																			
																			role="progressbar" aria-valuenow="75"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: ${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0])*100}%"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.PRESENT_VAL.split(":")[0])}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="BEST_tab">
										<div class="table-responsive">
											<div class="d-flex align-items-center row">
												<c:forEach var="dto" items="${BEST}">
													<div class="col-md-4"">
														<div class="card">
															<div class="card-body bigcard" onclick="location.href='report_view.do?INDICATORS_NUM=${dto.INDICATORS_NUM}'">
																<span class="badge badge-info">${dto.INDICATORS_NUM}</span>&nbsp;&nbsp;&nbsp;
																<span class="font-16">${dto.INDICATORS_NAME}</span>
																<div class="row mb-3 align-items-center mt-1 mt-5">
																	<div class="col-4 text-right">
																		<span class="font-14">목표값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.TARGET_VAL.split(":")[0])}</span>
																	</div>
																</div>
																<div class="row mb-3 align-items-center">
																	<div class="col-4 text-right">
																		<span class="font-14">현재값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div
																			class="progress-bar progress-bar-striped progress-bar-animated"
																			role="progressbar" aria-valuenow="75"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: ${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0])*100}%"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.PRESENT_VAL.split(":")[0])}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="AGENCY_tab">
										<div class="table-responsive">
											<div class="d-flex align-items-center row">
												<c:forEach var="dto" items="${AGENCY}">
													<div class="col-md-4">
														<div class="card">
															<div class="card-body bigcard" onclick="location.href='report_view.do?INDICATORS_NUM=${dto.INDICATORS_NUM}'">
																<span class="badge badge-info">${dto.INDICATORS_NUM}</span>&nbsp;&nbsp;&nbsp;
																<span class="font-16">${dto.INDICATORS_NAME}</span>
																<div class="row mb-3 align-items-center mt-1 mt-5">
																	<div class="col-4 text-right">
																		<span class="font-14">목표값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.TARGET_VAL.split(":")[0])}</span>
																	</div>
																</div>
																<div class="row mb-3 align-items-center">
																	<div class="col-4 text-right">
																		<span class="font-14">현재값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div
																			class="progress-bar progress-bar-striped progress-bar-animated"
																			role="progressbar" aria-valuenow="75"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: ${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0])*100}%"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.PRESENT_VAL.split(":")[0])}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="AHA_tab">
										<div class="table-responsive">
											<div class="d-flex align-items-center row">
												<c:forEach var="dto" items="${AHA}">
													<div class="col-md-4">
														<div class="card">
															<div class="card-body bigcard" onclick="location.href='report_view.do?INDICATORS_NUM=${dto.INDICATORS_NUM}'">
																<span class="badge badge-info">${dto.INDICATORS_NUM}</span>&nbsp;&nbsp;&nbsp;
																<span class="font-16">${dto.INDICATORS_NAME}</span>
																<div class="row mb-3 align-items-center mt-1 mt-5">
																	<div class="col-4 text-right">
																		<span class="font-14">목표값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.TARGET_VAL.split(":")[0])}</span>
																	</div>
																</div>
																<div class="row mb-3 align-items-center">
																	<div class="col-4 text-right">
																		<span class="font-14">현재값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div
																			class="progress-bar progress-bar-striped progress-bar-animated"
																			role="progressbar" aria-valuenow="75"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: ${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0])*100}%"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.PRESENT_VAL.split(":")[0])}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="LINC_tab">
										<div class="table-responsive">
											<div class="d-flex align-items-center row">
												<c:forEach var="dto" items="${LINC}">
													<div class="col-md-4">
														<div class="card">
															<div class="card-body bigcard" onclick="location.href='report_view.do?INDICATORS_NUM=${dto.INDICATORS_NUM}'">
																<span class="badge badge-info">${dto.INDICATORS_NUM}</span>&nbsp;&nbsp;&nbsp;
																<span class="font-16">${dto.INDICATORS_NAME}</span>
																<div class="row mb-3 align-items-center mt-1 mt-5">
																	<div class="col-4 text-right">
																		<span class="font-14">목표값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.TARGET_VAL.split(":")[0])}</span>
																	</div>
																</div>
																<div class="row mb-3 align-items-center">
																	<div class="col-4 text-right">
																		<span class="font-14">현재값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div
																			class="progress-bar progress-bar-striped progress-bar-animated"
																			role="progressbar" aria-valuenow="75"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: ${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0])*100}%"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.PRESENT_VAL.split(":")[0])}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="tab-pane" id="TYPE3_tab">
										<div class="table-responsive">
											<div class="d-flex align-items-center row">
												<c:forEach var="dto" items="${TYPE3}">
													<div class="col-md-4">
														<div class="card">
															<div class="card-body bigcard" onclick="location.href='report_view.do?INDICATORS_NUM=${dto.INDICATORS_NUM}'">
																<span class="badge badge-info">${dto.INDICATORS_NUM}</span>&nbsp;&nbsp;&nbsp;
																<span class="font-16">${dto.INDICATORS_NAME}</span>
																<div class="row mb-3 align-items-center mt-1 mt-5">
																	<div class="col-4 text-right">
																		<span class="font-14">목표값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.TARGET_VAL.split(":")[0])}</span>
																	</div>
																</div>
																<div class="row mb-3 align-items-center">
																	<div class="col-4 text-right">
																		<span class="font-14">현재값</span>
																	</div>
																	<div class="col-6">
																		<div class="progress">
																			<div
																			class="progress-bar progress-bar-striped progress-bar-animated"
																			role="progressbar" aria-valuenow="75"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: ${Double.parseDouble(dto.PRESENT_VAL.split(':')[0])/Double.parseDouble(dto.TARGET_VAL.split(':')[0])*100}%"></div>
																		</div>
																	</div>
																	<div class="col-2 text-right">
																		<span
																			class="mb-0 font-14 text-dark font-weight-medium">${Double.parseDouble(dto.PRESENT_VAL.split(":")[0])}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</c:forEach>
											</div>
										</div>
									</div>
									
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
	<c:import url="../import/javascript.jsp" charEncoding="UTF-8" >
    </c:import>
    <script>
    $( ".bigcard" ).hover(function() {
	    $(this).addClass('alert-primary').css('cursor', 'pointer'); 
	  }, function() {
	    $(this).removeClass('alert-primary');
	  }
	);
    </script>
    
</html>