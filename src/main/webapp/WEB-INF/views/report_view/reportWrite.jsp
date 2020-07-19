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
							class="page-title text-truncate text-dark font-weight-medium mb-1">성과지표
							관리</h3>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item">보고서 등록</li>
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

								<div class="row">
									<!-- 지표명 -->
									<div class="col-md-7" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>지표명</span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">취업률</label>
											</div>
										</div>
									</div>
									<!-- 담당 부서 -->
									<div class="col-md-5">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>관리부서</span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">입학취업처</label>
											</div>
										</div>
									</div>
									<!-- 활용 사업 -->
									<div class="col-md-7" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>활용 사업</span>
											</div>
											<div class="col-md-4"
												style="padding: 5px; padding-left: 15px;">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														name="IS_BEST" checked="checked" disabled="disabled"
														id="customCheck1"> <label
														class="custom-control-label" for="customCheck1"> <a
														class="btn btn-primary rounded-circle btn-circle"
														style="width: 25px; height: 25px;"
														href="javascript:void(0)"></a> 대학중장기 발전계획 BEST
													</label>
												</div>
											</div>
											<div class="col-md-4"
												style="padding: 5px; padding-left: 15px;">

												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														name="IS_AGENCY" disabled="disabled" id="customCheck2">
													<label class="custom-control-label" for="customCheck2">
														<a class="btn btn-danger rounded-circle btn-circle "
														style="width: 25px; height: 25px;"
														href="javascript:void(0)"></a> 기관평가인증
													</label>
												</div>
											</div>
											<div class="col-md-4"
												style="padding: 5px; padding-left: 15px;">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														name="IS_AHA" disabled="disabled" id="customCheck3">
													<label class="custom-control-label" for="customCheck3">
														<a class="btn btn-warning rounded-circle btn-circle "
														style="width: 25px; height: 25px;"
														href="javascript:void(0)"></a> 혁신지원 AHA
													</label>
												</div>
											</div>
											<div class="col-md-4"
												style="padding: 5px; padding-left: 15px;">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														name="IS_LINC" disabled="disabled" id="customCheck4">
													<label class="custom-control-label" for="customCheck4">
														<a class="btn btn-success rounded-circle btn-circle "
														style="width: 25px; height: 25px;"
														href="javascript:void(0)"></a> 사회맞춤형 LINC+
													</label>
												</div>
											</div>
											<div class="col-md-4"
												style="padding: 5px; padding-left: 15px;">
												<div class="custom-control custom-checkbox">
													<input type="checkbox" class="custom-control-input"
														name="IS_TYPE3" disabled="disabled" id="customCheck5">
													<label class="custom-control-label" for="customCheck5">
														<a class="btn btn-secondary rounded-circle btn-circle "
														style="width: 25px; height: 25px;"
														href="javascript:void(0)"></a> 3유형
													</label>
												</div>
											</div>
										</div>
									</div>
									<!-- 수집 방법 -->
									<div class="col-md-5" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>수집방법</span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">정보공시</label>
											</div>
										</div>
									</div>
									<!-- 평가 방법 -->
									<div class="col-md-3" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>평가방법</span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">정량</label>
											</div>
										</div>
									</div>
									<!-- 지표 기준 -->
									<div class="col-md-4" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>평가기준</span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">중장기발전계획
													목표 측정값</label>
											</div>
										</div>
									</div>
									<!-- 등급 -->
									<div class="col-md-5" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-4" style="padding-bottom: 5px;">
												<span>A등급</span>
											</div>
											<div class="col-md-4" style="padding-bottom: 5px;">
												<span>B등급</span>
											</div>
											<div class="col-md-4" style="padding-bottom: 5px;">
												<span>D등급</span>
											</div>
											<div class="col-md-4" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">100</label>
											</div>
											<div class="col-md-4" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">70</label>
											</div>
											<div class="col-md-4" style="padding-bottom: 10px;">
												<label
													style="border: 1px solid #5a6268; width: 100%; padding: 5px;">0</label>
											</div>
										</div>
									</div>
									<!-- 요소값 리스트 입력 -->
									<div class="col-md-12" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>요소 리스트 </span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<input type="text" class="form-control" disabled="disabled"
													name="ELEMENTS" value="">
											</div>
										</div>
									</div>
									<!-- 산출 식 입력 -->
									<div class="col-md-12" style="padding-bottom: 5px;">
										<div class="row">
											<div class="col-md-12" style="padding-bottom: 5px;">
												<span>산출식 </span>
											</div>
											<div class="col-md-12" style="padding-bottom: 10px;">
												<input type="text" class="form-control" readonly="readonly"
													name="FORMULA" value="">
											</div>
										</div>
									</div>
									<!-- 버튼-->
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-12" style="padding-top: 5px;">

												<button onclick="location.href='indicators_modify.do'"
													class="btn btn-primary waves-effect waves-light"
													type="button" style="float: right; margin-left: 5px;">지표
													수정</button>
											</div>
										</div>
									</div>
									<!-- 보고서 작성-->
									<div class="col-md-12">
										<hr>
										<h4>보고서 등록</h4>
										<br>
										<div class="row">
											<div class="col-md-6" style="padding-top: 5px;">
												<div class="row">
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-3" style="padding-bottom: 5px;">
														<span>요소명</span> <input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>

													<div class="col-md-12" style="padding-top: 10px;">
														<button onclick="location.href='indicators_modify.do'"
															class="btn btn-warning waves-effect waves-light"
															type="button" style="float: right; margin-left: 5px;">현재값
															계산하기</button>
													</div>
												</div>
											</div>
											<div class="col-md-1" style="padding-top: 5px;"></div>
											<div class="col-md-5" style="padding-top: 5px;">
												<div class="row">
													<div class="col-md-6">
														<span>목표값</span>
													</div>
													<div class="col-md-6">
														<span>현재값</span>
													</div>
													<div class="col-md-6">
														<input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
													<div class="col-md-6">
														<input type="text" name="INDICATORS_NAME"
															class="form-control">
													</div>
												</div>
											</div>
											<div class="col-md-12" style="padding-top: 5px;">
												<hr>
												<button class="btn btn-primary waves-effect waves-light"
													type="button" style="float: left;"
													onclick="location.href='indicators_view_list.do'">
													<span class="btn-label"><i
														class="fas fa-align-justify"></i></span>목록으로
												</button>
												<button onclick="location.href='indicators_modify.do'"
													class="btn btn-primary waves-effect waves-light"
													type="button" style="float: right; margin-left: 5px;">보고서
													등록</button>
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

		<!-- sample modal content -->
		<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg ">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">산출식 등록</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
					</div>
					<div class="modal-body">

						<p>
							<span style="float: center;">산출식</span>
						</p>
						<p>
							<input type="text" class="form-control" readonly="readonly"
								value="">
						</p>
						<hr>

						<div class="row">


							<div class="col-md-2" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary">(</button>
							</div>
							<div class="col-md-2" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary">)</button>
							</div>
							<div class="col-md-2" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary">+</button>
							</div>
							<div class="col-md-2" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary">-</button>
							</div>
							<div class="col-md-2" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary">*</button>
							</div>
							<div class="col-md-2" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary">/</button>
							</div>
							<div class="col-md-8" style="padding-bottom: 10px; width: 100%">
								<div class="row">
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">1</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">2</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">3</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">4</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">5</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">6</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">7</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">8</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">9</button>
									</div>
								</div>
							</div>
							<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
								<button type="button" class="btn btn-block btn-primary"
									style="height: 63px;">←</button>
								<button type="button" class="btn btn-block btn-primary"
									style="height: 63px;">0</button>
							</div>
							<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
								<div class="row">
									<div class="col-md-12"
										style="padding-bottom: 15px; text-align: center;">
										<span>산술식 요소 </span>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">취업자</button>
									</div>
									<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
										<button type="button" class="btn btn-block btn-primary">취업대상자</button>
									</div>
								</div>
							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">산출식 등록</button>
							<button type="button" class="btn btn-light" data-dismiss="modal">닫기</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
		</div>
</body>
<c:import url="../import/javascript.jsp" charEncoding="UTF-8">
</c:import>

</html>