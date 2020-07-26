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
                                    class="hide-menu">홈</span></a></li>
                        <li class="list-divider"></li>
                        <li class="sidebar-item"> <a class="sidebar-link" href="indicators_view_list.do"
                                aria-expanded="false"><i data-feather="edit-3" class="feather-icon"></i><span
                                    class="hide-menu">성과지표 관리
                                </span></a>
                        </li>
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
<!--                                 <li class="sidebar-item"><a href="indicator_grade_standard.do" class="sidebar-link"><span
                                            class="hide-menu"> 지표별 평가등급기준
                                        </span></a>
                                </li> -->
                            </ul>
                        </li>
                        
                        <li class="list-divider"></li>
                        <li class="nav-small-cap"><span class="hide-menu">사용자</span></li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="javascript:void(0)" data-toggle="modal"
                                        data-target="#login-modal"><i data-feather="log-in" class="feather-icon"></i><span
                                   >Log-In</span></a>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link sidebar-link" href="logout.do"
                                aria-expanded="false"><i data-feather="log-out" class="feather-icon"></i><span
                                    class="hide-menu">Log-Out</span></a>
                        </li>
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
                
            </div>
            <!-- End Sidebar scroll-->
        </aside>