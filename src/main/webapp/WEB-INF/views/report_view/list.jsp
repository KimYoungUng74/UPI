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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">성과 지표 정의서</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">지표 정의서 선택</a>
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
                <!-- Start Sales Charts Section -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                	<h4>카테고리 별 보기 </h4><br>
                                	
                                	<form class="row" action="report_view_list.do">
                                	<div class="col-md-6">
                                		<div class="col-md-6"  style="padding-bottom: 20px;">
                                			<span>활용 사업</span>
                                		</div>
                                		<div class="col-md-12" style="padding: 5px;">
                                			<div class="custom-control custom-checkbox">
                                				<c:choose>
                                					<c:when test="${kategorie.IS_BEST == 1}">
                                						<input type="checkbox" class="custom-control-input" id="IS_BEST" name="IS_BEST" value="1" checked="checked">
                                					</c:when>
                                					<c:otherwise>
                                						<input type="checkbox" class="custom-control-input" id="IS_BEST" name="IS_BEST" value="1">
                                					</c:otherwise>
                                				</c:choose>
                                    			
                                    			<label class="custom-control-label" for="IS_BEST">
                                					<a class="btn btn-primary rounded-circle btn-circle" style="width: 25px; height: 25px;" href="javascript:void(0)"></a>
                                					대학중장기 발전계획 BEST
                                				</label>
                                			</div>
                                		</div>
                                		<div class="col-md-12"  style="padding: 5px;" >
                                			<div class="custom-control custom-checkbox">
                                				<c:choose>
                                					<c:when test="${kategorie.IS_AGENCY == 1}">
                                						<input type="checkbox" class="custom-control-input" id="IS_AGENCY" name="IS_AGENCY" value="1" checked="checked"> 
                                					</c:when>
                                					<c:otherwise>
                                						<input type="checkbox" class="custom-control-input" id="IS_AGENCY" name="IS_AGENCY" value="1"> 
                                					</c:otherwise>
                                				</c:choose>
                                    			<label class="custom-control-label" for="IS_AGENCY">
                                			<a class="btn btn-danger rounded-circle btn-circle " style="width: 25px; height: 25px;" href="javascript:void(0)"></a>
                                            	기관평가인증</label>
                                            </div>           
                                         </div>
                                         <div class="col-md-12"  style="padding: 5px;">
                                         	<div class="custom-control custom-checkbox">
                                         		<c:choose>
                                					<c:when test="${kategorie.IS_AHA == 1}">
                                						
                                    			<input type="checkbox" class="custom-control-input" id="IS_AHA" name="IS_AHA" value="1" checked="checked"> 
                                					</c:when>
                                					<c:otherwise>
                                						
                                    			<input type="checkbox" class="custom-control-input" id="IS_AHA" name="IS_AHA" value="1"> 
                                					</c:otherwise>
                                				</c:choose>
                                    			<label class="custom-control-label" for="IS_AHA">
                                			<a class="btn btn-warning rounded-circle btn-circle " style="width: 25px; height: 25px;"
                                                            href="javascript:void(0)"></a>
                                   				혁신지원 AHA</label>
                                			</div>
                                         </div>
                                         <div class="col-md-12"  style="padding: 5px;">
                                         	<div class="custom-control custom-checkbox">
                                         		<c:choose>
                                					<c:when test="${kategorie.IS_LINC == 1}">
                                    					<input type="checkbox" class="custom-control-input" id="IS_LINC" name="IS_LINC" value="1" checked="checked">
                                    				</c:when>
                                					<c:otherwise>
                                						<input type="checkbox" class="custom-control-input" id="IS_LINC" name="IS_LINC" value="1">
                                					</c:otherwise>
                                				</c:choose>
                                    			<label class="custom-control-label" for="IS_LINC">
                                			<a class="btn btn-success rounded-circle btn-circle " style="width: 25px; height: 25px;"
                                                            href="javascript:void(0)"></a>
                                                                                    사회맞춤형 LINC+</label>
                                			</div>
                                            
                                         </div>
                                         <div class="col-md-12"  style="padding: 5px;">
                                         	<div class="custom-control custom-checkbox">
                                         		<c:choose>
                                					<c:when test="${kategorie.IS_TYPE3 == 1}">
                                    					<input type="checkbox" class="custom-control-input" id="IS_TYPE3" name="IS_TYPE3" value="1" checked="checked">
                                    				</c:when>
                                					<c:otherwise>
                                    					<input type="checkbox" class="custom-control-input" id="IS_TYPE3" name="IS_TYPE3" value="1">
                                					</c:otherwise>
                                				</c:choose>
                                    			<label class="custom-control-label" for="IS_TYPE3">
                                			<a class="btn btn-secondary rounded-circle btn-circle " style="width: 25px; height: 25px;"
                                                            href="javascript:void(0)"></a>
                                                 3유형</label>
                                			</div>
                                            
                                         </div>
                                	
                                	</div>
                                	<div class="col-md-6">
                                		<div class="col-md-12"  style="padding: 10px;">
                                			<span>담당 부서</span>
                                		</div>
                                		<div class="col-md-12">
                                			<select class="custom-select" name="DIVISION_NAME" style="color:gray;">
                                			<c:choose>
                                				<c:when test="${!kategorie.DIVISION_NAME.equals('모두 보기')}">
                                           			<option selected="" value="${kategorie.DIVISION_NAME}">${kategorie.DIVISION_NAME}</option>
                                           			<option>모두 보기</option>
                                				</c:when>
                                				<c:otherwise>
                                					<option selected="">모두 보기</option>
                                				</c:otherwise>
                                			</c:choose>
                                            	<option value="입학취업처">입학취업처</option>
                                            	<option value="교무학생처">교무학생처</option>
                                            	<option value="행정지원처">행정지원처</option>
                                            	<option value="대학발전운영실">대학발전운영실</option>
                                            	<option value="산학협력처">산학협력처</option>
                                        	</select>
                                        </div>
                                        <div class="col-md-12"  style="padding: 10px;">
                                			<span>지표명으로 검색 </span>
                                		</div>
                                		<div class="col-md-12" style="padding-bottom: 10px;">
                                			<input name="INDICATORS_NAME" class="form-control custom-shadow border-1 bg-white"
                                            type="search" placeholder="지표명으로 검색" aria-label="Search" value="${kategorie.INDICATORS_NAME}">
                                		</div>
                                		<div class="col-md-12" style="padding: 10px;">
                                    		<button class="btn btn-info waves-effect waves-light" type="submit" style="float: right;"><span class="btn-label"><i class="fas fa-search"></i></span> 검색</button>
                                		</div>
                                    </div>
                                    
                                	              
                            </form>
                        </div>
                    </div>
                    </div>
                    
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-center mb-4">
                                    <h4 class="card-title">성과지표 정의서 목록</h4>
                                </div>
                                <div class="table-responsive table-hover">
                                    <table class="table no-wrap v-middle mb-0 text-center">
                                        <thead>
                                            <tr class="border-0">
                                            	<th class="font-14 font-weight-medium  px-2">관리번호</th>
                                                <th class="font-14 font-weight-medium  px-2">성과지표명</th>
                                                <th class="font-14 font-weight-medium  px-2">관련부서</th>
                                                <th class="font-14 font-weight-medium  px-2">활용사업</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:if test="${list.size() == 0}">
                                        		<tr>
                                        			<td colspan="4">조건에 맞는 지표가 존재하지 않습니다.</td>
                                        		</tr>
                                        	</c:if>
                                            <c:forEach items="${list}" var="list">
                                            <tr onclick="location.href='report_view.do?INDICATORS_NUM=${list.INDICATORS_NUM}'">
                                            	<td class="border-top-0  px-2 py-4 font-14">${list.INDICATORS_NUM}</td>
                                                <td class="border-top-0  px-2 py-4 font-14">${list.INDICATORS_NAME}</td>
                                                <td class="border-top-0  px-2 py-4 font-14">${list.DIVISION_NAME}</td>
                                                 <td class="border-top-0 px-2 py-4">
                                                    <div class="popover-icon">
                                                    	<c:if test="${list.IS_BEST == 1}">
                                                    		<a class="btn btn-primary rounded-circle btn-circle font-12 popover-item"
                                                            href="javascript:void(0)">B</a>
                                                    	</c:if>
                                                        <c:if test="${list.IS_AGENCY == 1}">
                                                    		<a class="btn btn-danger rounded-circle btn-circle font-12 popover-item"
                                                            href="javascript:void(0)">E</a>
                                                    	</c:if>
                                                        <c:if test="${list.IS_AHA == 1}">
                                                    		<a class="btn btn-warning rounded-circle btn-circle font-12 popover-item"
                                                            href="javascript:void(0)">A</a>
                                                    	</c:if>
                                                    	<c:if test="${list.IS_LINC == 1}">
                                                    		<a class="btn btn-success rounded-circle btn-circle font-12 popover-item"
                                                            href="javascript:void(0)">L</a>
                                                    	</c:if>
                                                    	<c:if test="${list.IS_TYPE3 == 1}">
                                                    		<a class="btn btn-secondary rounded-circle btn-circle font-12 popover-item"
                                                            href="javascript:void(0)">3</a>
                                                    	</c:if>
                                                    </div>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
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
    
</html>