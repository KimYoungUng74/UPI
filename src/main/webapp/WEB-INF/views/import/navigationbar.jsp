<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="navbar-collapse collapse" id="navbarSupportedContent">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-left mr-auto ml-3 pl-1">
                        
                        <!-- End Notification -->
                        <!-- ============================================================== -->
                        <!-- create new -->
                        <!-- ============================================================== -->
                        <li class="nav-item d-none d-md-block">
                            <a class="nav-link" href="javascript:void(0)">
                                <form action="report_view_list.do">
                                    <div class="customize-input">
                                        <input name="INDICATORS_NAME" class="form-control custom-shadow custom-radius border-0 bg-white text-gray"
                                            type="search" placeholder="지표명으로 검색" aria-label="Search">
                                    </div>
                                </form>
                            </a>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-right">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        
                        <li class="nav-item">
                            <a class="nav-link" href="http://www.kyungmin.ac.kr/site/kmc/main.do" target="_blank"
                                aria-haspopup="true" aria-expanded="false">
                                <i data-feather="home" class="feather-icon"></i>
                                <span class="ml-2 d-none d-lg-inline-block"><span
                                        class="text-dark">경민대학교 홈페이지</span></span>
                            </a>
                        </li>
                        
                        <c:if test="${not empty sessionScope.USER_NAME}">
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0)" aria-haspopup="true" aria-expanded="false">
                                <span class="ml-2 d-none d-lg-inline-block"><span class="text-dark">${sessionScope.USER_NAME}님 로그인</span></span>
                            </a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="logout.do" target="_blank" aria-haspopup="true" aria-expanded="false">
                        		
                        		<span class="hide-menu">Log-Out</span>
                        	</a>
                        </li>
                        </c:if>
                        
                        
                        
                    </ul>
                </div>