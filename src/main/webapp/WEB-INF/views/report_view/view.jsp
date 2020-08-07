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
							class="page-title text-truncate text-dark font-weight-medium mb-1">성과
							지표 정의서</h3>
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="index.html">지표
											정의서 출력</a></li>
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
					<div class="col-md-12">
						<div class="card">
							<div class="card-body">
								<button class="btn btn-primary waves-effect waves-light"
									type="button" style="float: right;"
									onclick="location.href='report_view_list.do'">
									<span class="btn-label"><i class="fas fa-align-justify"></i></span>목록으로
								</button>
								<button class="btn btn-primary waves-effect waves-light btn-hwp" margin-left: 10px;
									type="button" >
									<span class="btn-label"><i class="far fa-file-alt"></i></span> HWP로 저장
								</button>
								&nbsp;
								<button
									class="btn btn-secondary waves-effect waves-light btn-print"
									type="button">
									<span class="btn-label"><i class="fas fa-print"></i></span> PDF저장/인쇄
								</button>
								&nbsp;
								<button
									class="btn btn-success waves-effect waves-light btn-png"
									type="button">
									<span class="btn-label"><i class="fas fa-image"></i></span> PNG로 저장
								</button>

							</div>
						</div>
					</div>
					<div class="col-lg-12" id="report">
						<!-- css링크들 임포트 -->
						<c:import url="../import/csslink.jsp" charEncoding="UTF-8">
						</c:import>
						<div class="card">
							<div class="card-body"  id="report_tb">
								<div class="d-flex align-items-center mb-4">
									<h4 class="card-title">성과지표 정의서</h4>
								</div>
								<table class="table" border="1" 
									style="text-align: center; color: black;" width="100%">

									<tr>
										<td class="border-top-0 px-8 py-4 font-14 table-active">관리번호</td>
										<td class="border-top-0  px-8 py-4 font-14">${Indicators.getINDICATORS_NUM()}</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">지표명</td>
										<td class="border-top-0  px-8 py-4 font-14" colspan="3">${Indicators.getINDICATORS_NAME()}</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-5 font-14 table-active"
											rowspan="2">활용</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">BEST</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">기관평가</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">AHA</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">LINC+</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">3유형</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-4 font-14"><c:if test="${Indicators.getIS_BEST()==1}">O</c:if></td>
										<td class="border-top-0  px-8 py-4 font-14"><c:if test="${Indicators.getIS_AGENCY()==1}">O</c:if></td>
										<td class="border-top-0  px-8 py-4 font-14"><c:if test="${Indicators.getIS_AHA()==1}">O</c:if></td>
										<td class="border-top-0  px-8 py-4 font-14"><c:if test="${Indicators.getIS_LINC()==1}">O</c:if></td>
										<td class="border-top-0  px-8 py-4 font-14"><c:if test="${Indicators.getIS_TYPE3()==1}">O</c:if></td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-4 font-14 table-active">기준일</td>
										<td class="border-top-0  px-8 py-4 font-14">${Record_1.getRECORD_DATE().getYear()+1900}년 ${Record_1.getRECORD_DATE().getMonth()+1}월</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">평가방법</td>
										<td class="border-top-0  px-8 py-4 font-14" colspan="3">${Indicators.getEVAL_METHOD()}</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-4 font-14 table-active">수집방법</td>
										<td class="border-top-0  px-8 py-4 font-14">${Indicators.getCOL_METHOD()}</td>
										<td class="border-top-0  px-8 py-4 font-14 table-active">평가기준</td>
										<td class="border-top-0  px-8 py-4 font-14" colspan="3">${Indicators.getEVAL_STANDARD()}</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-4 font-14 table-active">관리부서</td>
										<td class="border-top-0  px-8 py-4 font-14" colspan="5">${Indicators.getDIVISION_NAME()}</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-4 font-14 table-active">산출식</td>
										<td class="border-top-0  px-8 py-4 font-14" colspan="5">${Indicators.getFORMULA()}</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-5 font-14 table-active">등급<br>기준
										</td>
										<td class="border-top-0  px-8 py-6 font-14" colspan="5">
											<br> A(경민대학교 인증등급):평가지표별 목표 값 대비 달성도 ${Grade.getA_GRADE()}% 이상<br>
											B(잠재적 인증등급): 평가지표별 목표값 대비 달성도 ${Grade.getB_GRADE()}% 이상<br> D(부적합등급): 평가
											지표별 목표값 대비 달성도 ${Grade.getD_GRADE()}% 이하<br> 달성도 : 실시년도 실적값 / 전년도 실적값
										</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-14 font-14" colspan="6"
											align="center">
											<table class="table" border="1" style="text-align: center; color: black;" width="380">
												<tr>
													<td class="border-top-0  px-4 py-2 font-14 table-active">목표값</td>
													<td class="border-top-0  px-4 py-2 font-14" colspan="3">${Record_1.getTARGET_VAL()}</td>
												</tr>
												<tr>
													<td class="border-top-0  px-4 py-2 font-14 table-active">현재값</td>
													<td class="border-top-0  px-4 py-2 font-14" colspan="3">${Record_1.getPRESENT_VAL()}</td>
												</tr>
												<tr>
													<td class="border-top-0  px-4 py-2 font-14 table-active">평가년도</td>
													<td class="border-top-0  px-4 py-2 font-14">
														<c:if test="${Record_3.getRECORD_DATE().getYear()!=null}">
															${Record_3.getRECORD_DATE().getYear()+1900}년도
														</c:if>
													</td>
													<td class="border-top-0  px-4 py-2 font-14">
														<c:if test="${Record_2.getRECORD_DATE().getYear()!=null}">
														${Record_2.getRECORD_DATE().getYear()+1900}년도
														</c:if>
													</td>
													<td class="border-top-0  px-4 py-2 font-14">
														<c:if test="${Record_1.getRECORD_DATE().getYear()!=null}">
															${Record_1.getRECORD_DATE().getYear()+1900}년도
														</c:if>
													</td>
												</tr>
												<tr>
													<td class="border-top-0  px-4 py-2 font-14 table-active">등급</td>
													<td class="border-top-0  px-4 py-2 font-14">${Record_3.getGRADE()}</td>
													<td class="border-top-0  px-4 py-2 font-14">${Record_2.getGRADE()}</td>
													<td class="border-top-0  px-4 py-2 font-14">${Record_1.getGRADE()}</td>
												</tr>
												<tr>
													<td class="border-top-0  px-4 py-2 font-14 table-active">달성도</td>
													<td class="border-top-0  px-4 py-2 font-14">${Record_3.getACHIEVE_VAL()+0}</td>
													<td class="border-top-0  px-4 py-2 font-14">${Record_2.getACHIEVE_VAL()+0}</td>
													<td class="border-top-0  px-4 py-2 font-14">${Record_1.getACHIEVE_VAL()+0}</td>
												</tr>
											</table>
										</td>
									</tr>

									<tr>
										<td class="border-top-0  px-8 py-2 font-14 table-active"
											colspan="3">목표 및 현재 값</td>
										<td class="border-top-0  px-8 py-2 font-14 table-active"
											colspan="3">달성도</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-16 font-14" colspan="3"
											align="center">
											<div id="container1" style="margin: 0 auto; width: 400px;"></div>
										</td>
										<td class="border-top-0  px-8 py-16 font-14" colspan="3"
											align="center">
											<div id="container2" style="margin: 0 auto; width: 400px;"></div>
										</td>
									</tr>
									<tr>
										<td class="border-top-0  px-8 py-2 font-14 table-active">
											비고</td>
										<td class="border-top-0  px-8 py-2 font-14" colspan="5"></td>
									</tr>
								</table>
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
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script type="text/javascript">
	Highcharts.chart('container1', {
		chart : {
			type : 'column'
		},

		title : {
			text : ''
		},

		legend : {
			align : 'right',
			verticalAlign : 'middle',
			layout : 'vertical'
		},

		xAxis : {
			categories : ['${Record_3.getRECORD_DATE().getYear()+1900}', '${Record_2.getRECORD_DATE().getYear()+1900}', '${Record_1.getRECORD_DATE().getYear()+1900}' ],
			labels : {
				x : -10
			}
		},

		yAxis : {
			allowDecimals : false,
			title : {
				text : 'Amount'
			}
		},

		series : [ {
			name : '목표값',
			data : [ ${Record_3.getTARGET_VAL().split(":")[0]+0}, ${Record_2.getTARGET_VAL().split(":")[0]+0}, ${Record_1.getTARGET_VAL().split(":")[0]+0} ]
		}, {
			name : '현재값',
			data : [ ${Record_3.getPRESENT_VAL().split(":")[0]+0}, ${Record_2.getPRESENT_VAL().split(":")[0]+0}, ${Record_1.getPRESENT_VAL().split(":")[0]+0} ]
		} ]
	});
	Highcharts.chart('container2', {

		chart : {
			type : 'column'
		},

		title : {
			text : ''
		},

		legend : {
			align : 'right',
			verticalAlign : 'middle',
			layout : 'vertical'
		},

		xAxis : {
			categories : [ '${Record_3.getRECORD_DATE().getYear()+1900}', '${Record_2.getRECORD_DATE().getYear()+1900}', '${Record_1.getRECORD_DATE().getYear()+1900}' ],
			labels : {
				x : -10
			}
		},

		yAxis : {
			allowDecimals : false,
			title : {
				text : '%'
			}
		},

		series : [ {
			name : '달성도',
			data : [ ${Record_3.getACHIEVE_VAL()+0}, ${Record_2.getACHIEVE_VAL()+0}, ${Record_1.getACHIEVE_VAL()+0} ]
		} ]
	});

	/* $('.btn-print').click(function(){
		  var initBody=document.body.innerHTML;
		  window.onbeforeprint = function(){
			  document.body.innerHTML = document.getElementById('report').innerHTML;
		  }
		  window.onafterprint = function(){
			  document.body.innerHTML = initBody;
		  }
		  window.print();
	}); */

	$('.btn-print').click(function() {
		var win = window.open();
		self.focus();
		win.document.open();
		win.document.write(document.getElementById('report').innerHTML);
		win.print();
		win.close();
	});
	$('.btn-hwp').click(function() {
		var file = "hwp";
		var header = "<html>"+"<head><meta charset='utf-8'></head><body>";
		var footer = "</body></html>";
		var sourceHTML = header+document.getElementById("report").innerHTML+footer;
		var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);
		var fileDownload = document.createElement("a");
		document.body.appendChild(fileDownload);
		fileDownload.href = source;
		fileDownload.download = '경민대학교정의서_${Indicators.getINDICATORS_NAME()}.'+file;
		fileDownload.click();
		document.body.removeChild(fileDownload);
	});
	
	$('.btn-png').on("click", function(){
		// 캡쳐 라이브러리를 통해서 canvas 오브젝트를 받고 이미지 파일로 리턴한다.
		html2canvas(document.querySelector("#report_tb")).then(canvas => {
		saveAs(canvas.toDataURL('image/png'),"capture-test.png");
		});
	});
	function saveAs(uri, filename) {
	// 캡쳐된 파일을 이미지 파일로 내보낸다.
	var link = document.createElement('a');
	if (typeof link.download === 'string') {
	link.href = uri;
	link.download = filename;
	document.body.appendChild(link);
	link.click();
	document.body.removeChild(link);
	} else {
	window.open(uri);
	}
	}
	
</script>

</html>