<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- SignIn modal content -->
                                <div id="login-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <div class="text-center mt-2 mb-4">
                                                    <a href="index.html" class="text-success">
                                                        <span><img class="mr-2" src="<c:url value='resources/template/assets/images/logo-icon.png'/>"
                                                                alt="" height="18"><img
                                                                src="<c:url value='resources/template/assets/images/logo-text.png'/>" alt=""
                                                                height="18"></span>
                                                    </a>
                                                </div>

                                                <form action="login.do" class="pl-3 pr-3">

                                                    <div class="form-group">
                                                        <label>I D</label>
                                                        <input class="form-control" type="email" name="USER_ID"
                                                            required="" placeholder="교번을 입력해주세요">
                                                    </div>

                                                    <div class="form-group">
                                                        <label>Password</label>
                                                        <input class="form-control" type="password" name="USER_PW" required="" placeholder="암호를 입력해주세요">
                                                    </div>

                                                    <div class="form-group text-center">
                                                        <button class="btn btn-rounded btn-primary" type="submit">로그인</button>
                                                    </div>

                                                </form>

                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->


<script
	src="<c:url value='/resources/template/assets/libs/jquery/dist/jquery.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/libs/popper.js/dist/umd/popper.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/libs/bootstrap/dist/js/bootstrap.min.js'/>"></script>
<!-- apps -->
<!-- apps -->
<script
	src="<c:url value='/resources/template/dist/js/app-style-switcher.js'/>"></script>
<script
	src="<c:url value='/resources/template/dist/js/feather.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/dist/js/sidebarmenu.js'/>"></script>
<!--Custom JavaScript -->
<script src="<c:url value='/resources/template/dist/js/custom.min.js'/>"></script>
<!--This page JavaScript -->
<script
	src="<c:url value='/resources/template/assets/extra-libs/c3/d3.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/extra-libs/c3/c3.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/libs/chartist/dist/chartist.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/extra-libs/jvector/jquery-jvectormap-2.0.2.min.js'/>"></script>
<script
	src="<c:url value='/resources/template/assets/extra-libs/jvector/jquery-jvectormap-world-mill-en.js'/>"></script>
<script
	src="<c:url value='/resources/template/dist/js/pages/dashboards/dashboard1.min.js'/>"></script>
<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
