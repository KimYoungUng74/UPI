<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" data-sidebarbg="skin6">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="index.do"
                                aria-expanded="false"><i data-feather="home" class="feather-icon"></i><span
                                    class="hide-menu">HOME</span></a></li>
                        <!-- <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">현황</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="status_list_view.do"
                                aria-expanded="false"><i data-feather="bar-chart" class="feather-icon"></i><span
                                    class="hide-menu">사업별 현황</span></a></li> -->
                                    
                        <c:if test="${sessionScope.USER_GRANT > 0}">            
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">관리</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link" href="indicators_view_list.mg"
                                aria-expanded="false"><i data-feather="edit-3" class="feather-icon"></i><span
                                    class="hide-menu">성과지표 관리
                                </span></a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.USER_GRANT > 1}">
                        <li class="sidebar-item"> <a class="sidebar-link" href="user_management.lo"
                                aria-expanded="false"><i data-feather="user" class="feather-icon"></i><span
                                    class="hide-menu">유저 관리
                                </span></a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.USER_GRANT > 1}">
                        <li class="sidebar-item"> <a class="sidebar-link" href="log_view.lo"
                                aria-expanded="false"><i data-feather="lock" class="feather-icon"></i><span
                                    class="hide-menu">로그정보 관리
                                </span></a>
                        </li>
                        </c:if>
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">정보</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="report_view_list.do"
                                aria-expanded="false"><i data-feather="file-text" class="feather-icon"></i><span
                                    class="hide-menu">지표 정의서</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link has-arrow" href="javascript:void(0)"
                                aria-expanded="false"><i data-feather="bar-chart" class="feather-icon"></i><span
                                    class="hide-menu">성과지표 총괄 </span></a>
                            <ul aria-expanded="false" class="collapse  first-level base-level-line">
                            	<li class="sidebar-item"><a href="result_grid_view.do" class="sidebar-link"><span
                                            class="hide-menu"> 총괄 결과표
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="yearly_result_view.do" class="sidebar-link"><span
                                            class="hide-menu"> 전년도 대비 평가비교
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="yearly_grade_view.do" class="sidebar-link"><span
                                            class="hide-menu"> 연도별 평가등급표
                                        </span></a>
                                </li> 
                                <li class="sidebar-item"><a href="business_grade_view.do" class="sidebar-link"><span
                                            class="hide-menu"> 사업별 지표 등급표
                                        </span></a>
                                </li>
                                <li class="sidebar-item"><a href="indicator_formula_view.do" class="sidebar-link"><span
                                            class="hide-menu"> 지표별 산출식
                                        </span></a>
                                </li>
                            </ul>
                        </li>
                        
                        
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
                
            </div>
            <!-- End Sidebar scroll-->
        </aside>