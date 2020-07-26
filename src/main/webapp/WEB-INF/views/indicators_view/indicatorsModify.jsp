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
									<li class="breadcrumb-item">지표 수정</li>
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
				<form action="indicators_modifyOk.do" id="frm" method="post">
					<input type="hidden" name="INDICATORS_NUM"
						value="${dto.INDICATORS_NUM}">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="card">
								<div class="card-body">
									<h4>지표 수정</h4>
									<br>

									<div class="row">
										<!-- 지표명 -->
										<div class="col-md-7" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>지표명</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<input type="text" name="INDICATORS_NAME"
														class="form-control" value="${dto.INDICATORS_NAME}">
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
													<select class="custom-select" id="DIVISION_NAME"
														name="DIVISION_NAME">
														<option value="0">모두 보기</option>
														<c:choose>
															<c:when test="${dto.DIVISION_NAME eq '입학취업처'}">
																<option value="입학취업처" selected="selected">입학취업처</option>
															</c:when>
															<c:otherwise>
																<option value="입학취업처">입학취업처</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.DIVISION_NAME eq '교무학생처'}">
																<option value="교무학생처" selected="selected">교무학생처</option>
															</c:when>
															<c:otherwise>
																<option value="교무학생처">교무학생처</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.DIVISION_NAME eq '행정지원처'}">
																<option value="행정지원처" selected="selected">행정지원처</option>
															</c:when>
															<c:otherwise>
																<option value="행정지원처">행정지원처</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.DIVISION_NAME eq '대학발전운영실'}">
																<option value="대학발전운영실" selected="selected">대학발전운영실</option>
															</c:when>
															<c:otherwise>
																<option value="대학발전운영실">대학발전운영실</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.DIVISION_NAME eq '산학협력처'}">
																<option value="산학협력처" selected="selected">산학협력처</option>
															</c:when>
															<c:otherwise>
																<option value="산학협력처">산학협력처</option>
															</c:otherwise>
														</c:choose>
													</select>
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
														<c:choose>
															<c:when test="${1==dto.IS_BEST}">
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_BEST" id="customCheck1" checked="checked">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_BEST" id="customCheck1">
															</c:otherwise>
														</c:choose>
														<label class="custom-control-label" for="customCheck1">
															<a class="btn btn-primary rounded-circle btn-circle"
															style="width: 25px; height: 25px;"
															href="javascript:void(0)"></a> 대학중장기 발전계획 BEST
														</label>
													</div>
												</div>
												<div class="col-md-4"
													style="padding: 5px; padding-left: 15px;">

													<div class="custom-control custom-checkbox">
														<c:choose>
															<c:when test="${1==dto.IS_AGENCY}">
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_AGENCY" id="customCheck2" checked="checked">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_AGENCY" id="customCheck2">
															</c:otherwise>
														</c:choose>
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
														<c:choose>
															<c:when test="${1==dto.IS_AHA}">
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_AHA" id="customCheck3" checked="checked">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_AHA" id="customCheck3">
															</c:otherwise>
														</c:choose>
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
														<c:choose>
															<c:when test="${1==dto.IS_LINC}">
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_LINC" id="customCheck4" checked="checked">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_LINC" id="customCheck4">
															</c:otherwise>
														</c:choose>
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
														<c:choose>
															<c:when test="${1==dto.IS_TYPE3}">
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_TYPE3" id="customCheck5" checked="checked">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	name="IS_TYPE3" id="customCheck5">
															</c:otherwise>
														</c:choose>
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
													<select class="custom-select" id="inputGroupSelect04"
														name="COL_METHOD">
														<option value="">수집방법 선택</option>
														<c:choose>
															<c:when test="${dto.COL_METHOD eq '정보공시'}">
																<option value="정보공시" selected="selected">정보공시</option>
															</c:when>
															<c:otherwise>
																<option value="정보공시">정보공시</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.COL_METHOD eq '대학자료'}">
																<option value="대학자료" selected="selected">대학자료</option>
															</c:when>
															<c:otherwise>
																<option value="대학자료">대학자료</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.COL_METHOD eq '외부의뢰'}">
																<option value="외부의뢰" selected="selected">외부의뢰</option>
															</c:when>
															<c:otherwise>
																<option value="외부의뢰">외부의뢰</option>
															</c:otherwise>
														</c:choose>
													</select>
												</div>
											</div>
										</div>
										<!-- 목표 값 -->
										<div class="col-md-2" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>목표 값</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<input type="text" class="form-control"
														value="${dto.TARGET_VAL}" name="TARGET_VAL">
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
													<select class="custom-select" id="inputGroupSelect04"
														name="EVAL_METHOD">
														<option value="">평가방법 선택</option>
														<c:choose>
															<c:when test="${dto.EVAL_METHOD eq '정량'}">
																<option value="정량" selected="selected">정량</option>
															</c:when>
															<c:otherwise>
																<option value="정량">정량</option>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${dto.EVAL_METHOD eq '정성'}">
																<option value="정성" selected="selected">정성</option>
															</c:when>
															<c:otherwise>
																<option value="정성">정성</option>
															</c:otherwise>
														</c:choose>
													</select>
												</div>
											</div>
										</div>
										<!-- 지표 기준 -->
										<div class="col-md-7" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>평가기준</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<input type="text" class="form-control"
														name="EVAL_STANDARD" value="${dto.EVAL_STANDARD}">
												</div>
											</div>
										</div>
										<!-- 요소값 리스트 입력 -->
										<div class="col-md-12" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-5" style="padding-bottom: 5px;">
													<span>요소 리스트 </span>
												</div>
												<div class="col-md-7" style="padding-bottom: 5px;">
													<span>요소 입력</span>
												</div>
												<div class="col-md-5" style="padding-bottom: 10px;">
													<input type="text" class="form-control" readonly="readonly"
														id="ELEMENTS" name="ELEMENTS" value="${dto.ELEMENTS}">
												</div>
												<div class="col-md-4" style="padding-bottom: 10px;">
													<input type="text" class="form-control" id="input_ele">
												</div>
												<div class="col-md-3" style="padding-bottom: 10px;">
													<button class="btn btn-primary waves-effect waves-light"
														type="button" style="float: left;" id="regEleBtn">등록</button>

													<button class="btn btn-primary waves-effect waves-light"
														type="button" style="float: left; margin-left: 5px;"
														id="delEleBtn">삭제</button>
												</div>
											</div>
										</div>
										<!-- 산출 식 입력 -->
										<div class="col-md-12" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>산출식 </span>
												</div>
												<div class="col-md-9" style="padding-bottom: 10px;">
													<input type="text" class="form-control" readonly="readonly"
														id="FORMULA_input" name="FORMULA" value="${dto.FORMULA}">
												</div>
												<div class="col-md-2" style="padding-bottom: 10px;">
													<button type="button" class="btn btn-primary"
														data-toggle="modal" data-target="#myModal" id="formulaReg">산출식
														등록</button>
												</div>
											</div>

										</div>
										<!-- 버튼-->
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-12" style="padding-top: 5px;">
													<hr>
													<button
														onclick="changeURL(); return confirm('정말 사용중지 하시겠습니까?')?document.getElementById('frm').submit():''"
														class="btn btn-danger waves-effect waves-light"
														type="button" style="float: left; margin-left: 5px;">지표
														사용중지</button>
													<button class="btn btn-primary waves-effect waves-light"
														type="submit" style="float: right; margin-left: 5px;">지표
														수정</button>
													<button onclick="history.back(-1);"
														class="btn btn-light waves-effect waves-light"
														type="button" style="float: right;">뒤로가기</button>
												</div>

											</div>

										</div>
									</div>
								</div>
							</div>

						</div>
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
	/*요소 길이*/
	var ELEMENT_LEN = 0;

	/* 요소 버튼 클릭 */
	function changeURL() {
		document.getElementById('frm').action = "indicators_delete.do";
	};

	/* 요소 버튼 클릭 */
	function FORMULA_BTN(element_val) {
		ELEMENT_LEN = Number(element_val.length);
		$('#FORMULA_INPUT').val($('#FORMULA_INPUT').val() + element_val);
	};

	/* <- 버튼 클릭 */
	function FORMULA_DELET_BTN() {
		TEMP = $('#FORMULA_INPUT').val();
		TEMP = TEMP.substr(0, Number(TEMP.length) - ELEMENT_LEN);
		ELEMENT_LEN = 1;
		$('#FORMULA_INPUT').val(TEMP);
	};

	/* 요소 전체삭제 클릭 */
	function FORMULA_ALL_CLEAR_BTN() {
		$('#FORMULA_INPUT').val('');
	};

	/* 산술식 등록 버튼 클릭 */
	function Reg_FORMULA() {
		$('#FORMULA_input').val($('#FORMULA_INPUT').val().trim());
		$('#FORMULA_INPUT').val('');

		$('#Close_Formula').click();
	};

	$(function() {
		/* 요소 추가 버튼 클릭 */
		$('#regEleBtn').click(
				function() {
					if ($('#ELEMENTS').val() == ""
							&& !($('#input_ele').val() == "")) {
						$('#ELEMENTS').val($('#input_ele').val());
						$('#input_ele').val("");
					} else {

						var oldMySkill = $('#ELEMENTS').val();
						var newMySkill = oldMySkill.split(',');
						for ( var i in newMySkill) {
							if ($('#input_ele').val() == newMySkill[i]) {
								alert("이미 등록된 요소입니다.");
								return;
							}
						}
						$('#ELEMENTS').val(
								$('#ELEMENTS').val() + ","
										+ $('#input_ele').val());
						$('#input_ele').val("");
					}
				});

		/* 요소 삭제 버튼 클릭 */
		$('#delEleBtn').click(
				function() {
					if ($('#ELEMENTS').val() == "") {
						alert("제거할 요소가 없습니다.");
					} else {
						var oldELEMENTS = $('#ELEMENTS').val();
						var newELEMENTS = oldELEMENTS.split(',');
						$('#ELEMENTS').val("");
						for ( var i in newELEMENTS) {
							if ($('#input_ele').val() == newELEMENTS[i]) {
								continue;
							} else {
								if ($('#ELEMENTS').val() == "") {
									$('#ELEMENTS').val(newELEMENTS[i]);
								} else {
									$('#ELEMENTS').val(
											$('#ELEMENTS').val() + ","
													+ newELEMENTS[i]);
								}

							}
						}
						$('#input_ele').val("");
					}
				});

		/* 산출식 등록 버튼 클릭 */
		$('#formulaReg')
				.click(
						function() {
							var str = "<div class=\"col-md-12\"style=\"padding-bottom: 15px; text-align: center;\"><span>산출식 요소 </span></div>";
							$(".FORMULA_Dialog").html(str);
							str = "";
							var ELEMENTS = $('#ELEMENTS').val();
							if (ELEMENTS != "") {
								var ELEMENTS_List = ELEMENTS.split(',');

								for ( var i in ELEMENTS_List) {
									str += "<div class=\"col-md-4\" style=\"padding-bottom: 10px; width: 100%\"><button type=\"button\" class=\"btn btn-block btn-primary\" onclick=\"FORMULA_BTN(\'"
									str += ELEMENTS_List[i];
									str += "\');\" value=\"";
									str += ELEMENTS_List[i];
									str += "\">"
									str += ELEMENTS_List[i];
									str += "</button></div>";

								}
							}
							$(".FORMULA_Dialog").append(str);
						});
	});
</script>
</html>