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
								<form action="report_write_ok.mg" method="post" id="submitform">
									<input type="hidden" name="INDICATORS_NUM"
										value="${dto.INDICATORS_NUM}">
										<input type="hidden" name="INDICATORS_NAME"
										value="${dto.INDICATORS_NAME}">
										<input type="hidden" name="TARGET_VAL" id="TARGET_VAL"
										value="${dto.TARGET_VAL}">
										<input type="hidden" name="IS_BEST"
										value="${dto.IS_BEST}"> 
										<input type="hidden" name="IS_AGENCY"
										value="${dto.IS_AGENCY}"> 
										<input type="hidden" name="IS_AHA"
										value="${dto.IS_AHA}"> 
										<input type="hidden" name="IS_LINC"
										value="${dto.IS_LINC}"> 
										<input type="hidden" name="IS_TYPE3"
										value="${dto.IS_TYPE3}">
										<input type="hidden" name="IS_NEGATIVE"
										value="${dto.IS_NEGATIVE}"> 
									<div class="row">
										<!-- 지표명 -->
										<div class="col-md-7" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>지표명</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
													<label
														style="border: 1px solid #5a6268; width: 100%; padding: 5px;">${dto.INDICATORS_NAME}</label>
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
														style="border: 1px solid #5a6268; width: 100%; padding: 5px;">${dto.DIVISION_NAME}</label>
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
																	 id="customCheck1" checked="checked"
																	disabled="disabled">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	 id="customCheck1" disabled="disabled">
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
																	 id="customCheck2" checked="checked"
																	disabled="disabled">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	 id="customCheck2" disabled="disabled">
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
																	id="customCheck3" checked="checked"
																	disabled="disabled">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	id="customCheck3" disabled="disabled">
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
																    id="customCheck4" checked="checked"
																	disabled="disabled">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	id="customCheck4" disabled="disabled">
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
																	id="customCheck5" checked="checked"
																	disabled="disabled">
															</c:when>
															<c:otherwise>
																<input type="checkbox"
																	class="custom-control-input cuscheck" value=1
																	id="customCheck5" disabled="disabled">
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
													<label
														style="border: 1px solid #5a6268; width: 100%; padding: 5px;">${dto.COL_METHOD}</label>
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
													<label
														style="border: 1px solid #5a6268; width: 100%; padding: 5px;">${dto.TARGET_VAL}</label>
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
														style="border: 1px solid #5a6268; width: 100%; padding: 5px;">${dto.EVAL_METHOD}</label>
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
														style="border: 1px solid #5a6268; width: 100%; padding: 5px;">${dto.EVAL_STANDARD}</label>
												</div>
											</div>
										</div>
										
										<!-- 정적 부적  -->
										<div class="col-md-3" style="padding-bottom: 5px;">
											<div class="row">
												<div class="col-md-12" style="padding-bottom: 5px;">
													<span>등급기준</span>
												</div>
												<div class="col-md-12" style="padding-bottom: 10px;">
												<c:choose>
												 <c:when test="${dto.IS_NEGATIVE == 0}">
												 	<label style="border: 1px solid #5a6268; width: 100%; padding: 5px;">정적</label>
												 </c:when>
												 <c:otherwise>
												 	<label style="border: 1px solid #5a6268; width: 100%; padding: 5px;">부적</label>
												 </c:otherwise>
												</c:choose>
													
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
														id="ELEMENTS" name="ELEMENTS" value="${dto.ELEMENTS}">
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
														id="FORMULA" name="FORMULA" value="${dto.FORMULA}">
												</div>
											</div>
										</div>
										<!-- 버튼-->
										<div class="col-md-12">
											<div class="row">
												<div class="col-md-12" style="padding-top: 5px;">

													<button
														onclick="location.href='indicators_modify.mg?INDICATORS_NUM=${dto.INDICATORS_NUM}'"
														class="btn btn-primary waves-effect waves-light"
														type="button" style="float: right; margin-left: 5px;">지표
														수정</button>
												</div>
											</div>
										</div>
										<!-- 보고서 작성-->
										<div class="col-md-12">
											<hr>
											<h4>보고서 등록 <span style="float:right;"> 최근 등록날짜 : ${recordDTO.RECORD_DATE}</span></h4> 
											<br>
											<div class="row">
												<div class="col-md-6" style="padding-top: 5px;">
													<div class="row" id="FORMULA_AREA"></div>
												</div>
												<div class="col-md-1" style="padding-top: 5px;"></div>
												<div class="col-md-5" style="padding-top: 5px;">
													<div class="row">

														<div class="col-md-12">
															<span>현재 값</span> <span style="float:right; color: orange;"> 이전 등록 현재 값 : ${recordDTO.PRESENT_VAL}</span>
														</div>
														<input type="hidden" id="ELEMENTS_VAL" name="ELEMENT_VAL" value="">

														<div class="col-md-12">
															<input type="text" id="PRESENT_VAL" name="PRESENT_VAL"
																class="form-control">
														</div>

														<div class="col-md-12" style="padding-top: 10px;">
															<button
																class="btn btn-warning waves-effect waves-light"
																id="ele_Btn" type="button"
																style="float: right; margin-left: 5px;">현재값
																계산하기</button>
														</div>
													</div>
												</div>

												<div class="col-md-12" style="padding-top: 5px;">
													<hr>
													<button class="btn btn-primary waves-effect waves-light"
														type="button" style="float: left;"
														onclick="location.href='indicators_view_list.mg'">
														<span class="btn-label"><i
															class="fas fa-align-justify"></i></span>목록으로
													</button>
													<button class="btn btn-primary waves-effect waves-light" id="submit_btn"
														type="button" style="float: right; margin-left: 5px;">보고서
														등록</button>
												</div>
											</div>
										</div>
									</div>
								</form>
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
	</div>
</body>
<c:import url="../import/javascript.jsp" charEncoding="UTF-8">
</c:import>
<script type="text/javascript">
	/* 요소 버튼 클릭 */
	$(function() {

		// 요소값 입력창 생성
		str = "";
		var ELEMENTS = $('#ELEMENTS').val();
		if (ELEMENTS != "") {
			var ELEMENTS_List = ELEMENTS.split(',');

			for ( var i in ELEMENTS_List) {
				str += "<div class=\"col-md-4\" style=\"padding-bottom: 5px;\"> <span>";
				str += ELEMENTS_List[i];
				str += "</span> <input type=\"text\" name=\"ELEMENTS_AREA\"";
				str += " class=\"form-control\"></div>";
			}
		}
		$("#FORMULA_AREA").append(str);

		 // 현재값 계산
		$('#ele_Btn').click(function() {
				var FORMULA = $('#FORMULA').val();
				var ELEMENTS = $('#ELEMENTS').val();
				var isOk = 0;
				if (ELEMENTS != "") {
				var ELEMENTS_List = ELEMENTS.split(',');
				// 산출식에 요소별 값 적용
				$('#ELEMENTS_VAL').val("");
				for ( var i in ELEMENTS_List) {
					if($("input[name=ELEMENTS_AREA]:eq(" + i + ")").val() == "") {
						alert(ELEMENTS_List[i]+"의 요소값을 입력해주세요");
						isOk=1;
					}
					FORMULA = FORMULA.replace(ELEMENTS_List[i], $("input[name=ELEMENTS_AREA]:eq(" + i + ")").val());
				}
				
				if(isOk == 0) {
					// 양쪽 여백 제거 
					FORMULA = $.trim(FORMULA);
					if($('#TARGET_VAL').val().includes(":")) {
						$('#PRESENT_VAL').val(eval(FORMULA).toFixed(2)+":1");
					} else {
						$('#PRESENT_VAL').val(eval(FORMULA).toFixed(2));
					}
					$('#PRESENT_VAL').attr('readonly', true);
				}
				}
		}); 
	});
</script>

<script src="<c:url value='/resources/js/ReportCheck.js'/>"></script>
</html>