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
							class="page-title text-truncate text-dark font-weight-medium mb-1">유저
							관리</h3>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item">유저관리</li>
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
				<form id="submitform" method="post">
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-lg-6 col-md-6">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<!-- 유저 아이디 -->
										<div class="col-md-4" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>유저 아이디</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<input type="text" class="form-control" id="USER_ID"
														name="USER_ID">
												</div>
											</div>
										</div>
										<!-- 유저 이름 -->
										<div class="col-md-4" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>유저 이름</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<input type="text" class="form-control" id="USER_NAME"
														name="USER_NAME">
												</div>
											</div>
										</div>

										<!-- 권한 관리 -->
										<div class="col-md-4" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>권한 관리</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<div class="form-check form-check-inline">
														<div class="custom-control custom-radio">
															<input type="radio" class="custom-control-input"
																id="USER_GRANT1" name="USER_GRANT" value="0"
																checked="checked"> <label
																class="custom-control-label" for="USER_GRANT1">일반</label>
														</div>
													</div>
													<div class="form-check form-check-inline">
														<div class="custom-control custom-radio">
															<input type="radio" class="custom-control-input"
																id="USER_GRANT2" name="USER_GRANT" value="1"> <label
																class="custom-control-label" for="USER_GRANT2">관리자</label>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- 버튼 -->
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-12" style="padding-top: 5px;">
													<hr>
													<button onclick="userDelete();"
														class="btn btn-danger waves-effect waves-light"
														type="button" style="float: left; margin-left: 5px;">유저
														삭제</button>
													<button class="btn btn-success waves-effect waves-light"
														onclick="userReg();" type="button" id="userReg_btn"
														style="float: right; margin-left: 5px;">유저 등록</button>
													<button class="btn btn-primary waves-effect waves-light"
														onclick="userUpdate();" type="button" id="userReg_btn"
														style="float: right; margin-left: 5px;">수정 하기</button>
													<button class="btn btn-primary waves-effect waves-light"
														onclick="pwInit();" type="button" id="userReg_btn"
														style="float: right; margin-left: 5px;">비밀번호 초기화</button>
													<button class="btn btn-light waves-effect waves-light"
														onclick="userSerch();" type="button" id="userReg_btn"
														style="float: right; margin-left: 5px;">유저 검색</button>
												</div>
											</div>

										</div>


									</div>
								</div>
							</div>
						</div>
						<div class="col-md-3"></div>
					</div>
				</form>
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
						<input type="text" id="FORMULA_INPUT" class="form-control"
							readonly="readonly" value="">
					</p>
					<hr>

					<div class="row">

						<div class="col-md-9" style="padding-bottom: 10px; width: 100%">
							<div class="row">

								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('(');" name="FORMULA_BTN" value="(">(</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN(')');" name="FORMULA_BTN" value=")">)</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_ALL_CLEAR_BTN();" name="FORMULA_BTN">C</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('7');" name="FORMULA_BTN" value="7">7</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('8');" name="FORMULA_BTN" value="8">8</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('9');" name="FORMULA_BTN" value="9">9</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('4');" name="FORMULA_BTN" value="4">4</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('5');" name="FORMULA_BTN" value="5">5</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('6');" name="FORMULA_BTN" value="6">6</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('1');" name="FORMULA_BTN" value="1">1</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('2');" name="FORMULA_BTN" value="2">2</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('3');" name="FORMULA_BTN" value="3">3</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('00');" name="FORMULA_BTN" value="00">00</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('0');" name="FORMULA_BTN" value="0">0</button>
								</div>
								<div class="col-md-4" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('.');" name="FORMULA_BTN" value=".">.</button>
								</div>
							</div>
						</div>

						<div class="col-md-3" style="padding-bottom: 10px; width: 100%">
							<div class="row">
								<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_DELET_BTN();" id="FORMULA_BACK_BTN">←</button>
								</div>
								<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('/');" name="FORMULA_BTN" value="/">/</button>
								</div>
								<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('*');" name="FORMULA_BTN" value="*">*</button>
								</div>
								<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('-');" name="FORMULA_BTN" value="-">-</button>
								</div>
								<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
									<button type="button" class="btn btn-block btn-primary"
										onclick="FORMULA_BTN('+');" name="FORMULA_BTN" value="+">+</button>
								</div>
							</div>
						</div>


						<div class="col-md-12" style="padding-bottom: 10px; width: 100%">
							<div class="row FORMULA_Dialog"></div>
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary"
						onclick="Reg_FORMULA();">산출식 등록</button>
					<button id="Close_Formula" type="button" class="btn btn-light"
						data-dismiss="modal">닫기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
<c:import url="../import/javascript.jsp" charEncoding="UTF-8">
</c:import>
<script type="text/javascript">
	/* 유저 삭제 클릭 */
	function userDelete() {
		if (confirm('정말 삭제 하시겠습니까?')) {
			document.getElementById('submitform').action = "user_delete.lo";
			document.getElementById('submitform').submit();
		}
	};
	
	/* 비밀번호 초기화 클릭 */
	function pwInit() {
		if (confirm('비밀번호를 초기화 하겠습니까?')) {
			document.getElementById('submitform').action = "pw_init.lo";
			document.getElementById('submitform').submit();
		}
	};
	
	/* 유저 수정 클릭 */
	function pwInit() {
			document.getElementById('submitform').action = "user_update.lo";
			document.getElementById('submitform').submit();
	};
	
	/* 유저 등록 클릭 */
	function pwInit() {
			document.getElementById('submitform').action = "user_reg.lo";
			document.getElementById('submitform').submit();
	};
	
</script>
<script src="<c:url value='/resources/js/IndicatorsCheck.js'/>"></script>
</html>