<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

<head>
<!-- css링크들 임포트 -->
<c:import url="../import/csslink.jsp" charEncoding="UTF-8">
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
	<div id="main-wrapper" data-theme="light" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed"
		data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-md">
				<div class="navbar-header" data-logobg="skin6">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<div class="navbar-brand">
						<!-- Logo icon -->
						<a href="index.do"> <b class="logo-icon"> <!-- Dark Logo icon -->
								<img
								src="<c:url value='/resources/template/assets/images/logo-icon.png'/>"
								alt="homepage" class="dark-logo" /> <!-- Light Logo icon --> <img
								src="<c:url value='/resources/template/assets/images/logo-icon.png'/>"
								alt="homepage" class="light-logo" />
						</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
								<!-- dark Logo text --> <img
								src="<c:url value='/resources/template/assets/images/logo-text.png'/>"
								alt="homepage" class="dark-logo" /> <!-- Light Logo text --> <img
								src="<c:url value='/resources/template/assets/images/logo-light-text.png'/>"
								class="light-logo" alt="homepage" />
						</span>
						</a>
					</div>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-md-none waves-effect waves-light"
						href="javascript:void(0)" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"><i class="ti-more"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<!-- 상단 네비게이션바 임포트  -->
				<c:import url="../import/navigationbar.jsp" charEncoding="UTF-8">
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
		<c:import url="../import/sidebar.jsp" charEncoding="UTF-8">
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
						<h3
							class="page-title text-truncate text-dark font-weight-medium mb-1">로그정보 관리</h3>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html">로그</a></li>
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
					<div class="col-lg-12 col-md-12">
						<div class="card">
							<div class="card-body">
                                <ul class="nav nav-pills bg-nav-pills nav-justified mb-3">
                                    <li class="nav-item">
                                        <a href="#indic_tab" data-toggle="tab" aria-expanded="true" class="nav-link active">
                                            <i class="mdi mdi-home-variant d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">지표 로그 관리</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#record_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-account-circle d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">보고서 로그 관리</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#grade_tab" data-toggle="tab" aria-expanded="false" class="nav-link">
                                            <i class="mdi mdi-settings-outline d-lg-none d-block mr-1"></i>
                                            <span class="d-none d-lg-block">등급 기준 로그 관리</span>
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane show active" id="indic_tab">
										<div class="table-responsive">
											<table id="tb1"
												class="table table-sm table-striped table-bordered no-wrap dataTable"
												role="grid">

												<thead>
													<tr>
														<th>index</th>
														<th>관리번호</th>
														<th>성과지표명</th>
														<th>BEST</th>
														<th>기간평가인증</th>
														<th>AHA</th>
														<th>LINC+</th>
														<th>3유형</th>
														<th>요소값</th>
														<th>수집방법</th>
														<th>평가방법</th>
														<th>평가기준</th>
														<th>관리부서</th>
														<th>목표값</th>
														<th>산출식</th>
														<th>정적/부적</th>
														<th>사용여부</th>
														<th>유저ID</th>
														<th>유저명</th>
														<th>행위</th>
														<th>DATE</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="indiDto" items="${indiDto}">
														<tr>
															<td>${indiDto.INDICATORS_NUM}</td>
															<td>${indiDto.CONTROL_NUM}</td>
															<td>${indiDto.INDICATORS_NAME}</td>
															<td>${indiDto.IS_BEST}</td>
															<td>${indiDto.IS_AGENCY}</td>
															<td>${indiDto.IS_AHA}</td>
															<td>${indiDto.IS_LINC}</td>
															<td>${indiDto.IS_TYPE3}</td>
															<td>${indiDto.ELEMENTS}</td>
															<td>${indiDto.COL_METHOD}</td>
															<td>${indiDto.EVAL_METHOD}</td>
															<td>${indiDto.EVAL_STANDARD}</td>
															<td>${indiDto.DIVISION_NAME}</td>
															<td>${indiDto.TARGET_VAL}</td>
															<td>${indiDto.FORMULA}</td>
															<td>${indiDto.IS_NEGATIVE}</td>
															<td>${indiDto.IS_USE}</td>
															<td>${indiDto.USER_ID}</td>
															<td>${indiDto.USER_NAME}</td>
															<c:choose>
																<c:when test="${indiDto.ACTION_CODE == 1}">
																	<td>등록</td>
																</c:when>
																<c:when test="${indiDto.ACTION_CODE == 2}">
																	<td>수정</td>
																</c:when>
																<c:when test="${indiDto.ACTION_CODE == 3}">
																	<td>사용중지</td>
																</c:when>
																<c:otherwise>
																	<td>오류</td>
																</c:otherwise>
															</c:choose>
															<td>${indiDto.RECORD_DATE}</td>
														</tr>
													</c:forEach>	
												</tbody>
											</table>
										</div>
									</div>
                                    <div class="tab-pane" id="record_tab">
                                        
										<div class="table-responsive">
											<table id="tb2"
												class="table table-sm table-striped table-bordered no-wrap dataTable"
												role="grid">

												<thead>
													<tr>
														<th>index</th>
														<th>관리번호</th>
														<th>성과지표명</th>
														<th>BEST</th>
														<th>기간평가인증</th>
														<th>AHA</th>
														<th>LINC+</th>
														<th>3유형</th>
														<th>목표값</th>
														<th>요소값</th>
														<th>현재 값</th>
														<th>등급</th>
														<th>달성도</th>
														<th>유저ID</th>
														<th>유저명</th>
														<th>행위</th>
														<th>DATE</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="recordDto" items="${recordDto}">
														<tr>
															<td>${recordDto.RECORD_NUM}</td>
															<td>${recordDto.INDICATORS_NUM}</td>
															<td>${recordDto.INDICATORS_NAME}</td>
															<td>${recordDto.IS_BEST}</td>
															<td>${recordDto.IS_AGENCY}</td>
															<td>${recordDto.IS_AHA}</td>
															<td>${recordDto.IS_LINC}</td>
															<td>${recordDto.IS_TYPE3}</td>
															<td>${recordDto.TARGET_VAL}</td>
															<td>${recordDto.ELEMENT_VAL}</td>
															<td>${recordDto.PRESENT_VAL}</td>
															<td>${recordDto.GRADE}</td>
															<td>${recordDto.ACHIEVE_VAL}</td>
															<td>${recordDto.USER_ID}</td>
															<td>${recordDto.USER_NAME}</td>
															<c:choose>
																<c:when test="${recordDto.ACTION_CODE == 1}">
																	<td>등록</td>
																</c:when>
																<c:when test="${recordDto.ACTION_CODE == 3}">
																	<td>사용중지</td>
																</c:when>
																<c:otherwise>
																	<td>오류</td>
																</c:otherwise>
															</c:choose>
															<td>${recordDto.RECORD_DATE}</td>
														</tr>
													</c:forEach>
												</tbody>

											</table>
										</div>
									
                                    </div>
                                    <div class="tab-pane" id="grade_tab">
                                        
										<div class="table-responsive">
											<table id="tb3"
												class="table table-sm table-striped table-bordered no-wrap dataTable"
												role="grid">
												<thead>
													<tr>
														<th>index</th>
														<th>A등급 %</th>
														<th>B등급 %</th>
														<th>D등급 %</th>
														<th>A등급 조치</th>
														<th>B등급 조치</th>
														<th>D등급 조치</th>
														<th>유저ID</th>
														<th>유저명</th>
														<th>행위</th>
														<th>DATE</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="gradeDto" items="${gradeDto}">
														<tr>
															<td>${gradeDto.GRADE_NUM}</td>
															<td>${gradeDto.A_GRADE}</td>
															<td>${gradeDto.B_GRADE}</td>
															<td>${gradeDto.D_GRADE}</td>
															<td>${gradeDto.A_MEASURE}</td>
															<td>${gradeDto.B_MEASURE}</td>
															<td>${gradeDto.D_MEASURE}</td>
															<td>${gradeDto.USER_ID}</td>
															<td>${gradeDto.USER_NAME}</td>
															<c:choose>
																<c:when test="${gradeDto.ACTION_CODE == 2}">
																	<td>수정</td>
																</c:when>
																<c:otherwise>
																	<td>오류</td>
																</c:otherwise>
															</c:choose>
															<td>${gradeDto.RECORD_DATE}</td>
														</tr>
													</c:forEach>
												</tbody>

											</table>
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
<c:import url="../import/javascript.jsp" charEncoding="UTF-8">
</c:import>
   <!-- Page-Level Demo Scripts - Tables - Use for reference -->
   <script>
      $(document).ready(function() {
         $('#tb1').DataTable({
            "lengthMenu" : [ 5, 10, 25, 50, 100 ],
            "scrollCollapse" : true,
            "pagingType" : "full_numbers",
        	ordering: false,
        	info: false,
            "language" : {
               search : "리스트 내 검색 : ",
               "info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
               "infoEmpty" : "검색 결과가 없습니다.",
               "infoFiltered" : " ( _MAX_개의 검색결과 중)",
               "lengthMenu" : "_MENU_ 개씩 보기",
               "paginate" : {
                  "first" : "처음",
                  "last" : "마지막",
                  "next" : "다음",
                  "previous" : "이전"
               }

            }

         });
         $('#tb2').DataTable({
             "lengthMenu" : [ 5, 10, 25, 50, 100 ],
             "scrollCollapse" : true,
             "pagingType" : "full_numbers",
         	 ordering: false,
         	 info: false,
             "language" : {
                search : "리스트 내 검색 : ",
                "info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
                "infoEmpty" : "검색 결과가 없습니다.",
                "infoFiltered" : " ( _MAX_개의 검색결과 중)",
                "lengthMenu" : "_MENU_ 개씩 보기",
                "paginate" : {
                   "first" : "처음",
                   "last" : "마지막",
                   "next" : "다음",
                   "previous" : "이전"
                }

             }

          });
         $('#tb3').DataTable({
             "lengthMenu" : [ 5, 10, 25, 50, 100 ],
             "scrollCollapse" : true,
             "pagingType" : "full_numbers",
             ordering: false,
         	 info: false,
             "language" : {
                search : "리스트 내 검색 : ",
                "info" : "총 _PAGES_ 페이지 중 _PAGE_ 페이지 ",
                "infoEmpty" : "검색 결과가 없습니다.",
                "infoFiltered" : " ( _MAX_개의 검색결과 중)",
                "lengthMenu" : "_MENU_ 개씩 보기",
                "paginate" : {
                   "first" : "처음",
                   "last" : "마지막",
                   "next" : "다음",
                   "previous" : "이전"
                }

             }

          });
      });
   </script>
</html>