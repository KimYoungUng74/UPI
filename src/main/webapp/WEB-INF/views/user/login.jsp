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
    <div class="main-wrapper">
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
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
        <div class="auth-wrapper d-flex no-block justify-content-center align-items-center position-relative"
            style="background:url(<c:url value='resources/template/assets/images/big/auth-bg.jpg'/>) no-repeat center center;">
            <div class="auth-box row">
                <div class="col-lg-7 col-md-5 modal-bg-img" style="background-image: url(<c:url value='resources/images/big_logo.jpg'/>);">
                </div>
                <div class="col-lg-5 col-md-7 bg-white">
                    <div class="p-3">
                        <form class="mt-4" id="frm_login" action="login_ok.do" method="post">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="text-dark" for="USER_ID">I D</label>
                                        <input class="form-control" id="USER_ID" name="USER_ID" type="text"
                                            placeholder="enter your id">
                                            <span id="id_check"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label class="text-dark" for="USER_PW">Password</label>
                                        <input class="form-control" id="USER_PW" name="USER_PW" type="password"
                                            placeholder="enter your password">
                                            <span id="pw_check"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center mt-2">
                                    <button type="button" id="login_btn" class="btn btn-block btn-dark">로그인</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- Login box.scss -->
        <!-- ============================================================== -->
    </div>
</body>
<c:import url="../import/javascript.jsp" charEncoding="UTF-8" >
</c:import>

<script>
	$(".preloader ").fadeOut(); //TEMPLATE DEFAULT
</script>
<!-- 로그인 체크 자바스크립트 -->
<script src="<c:url value='/resources/js/loginCheck.js'/>"></script>

<script>
$('#USER_ID').keydown(function(key) {
    if (key.keyCode == 13) {
    	$("#login_btn").click();
    }
});
$('#USER_PW').keydown(function(key) {
    if (key.keyCode == 13) {
    	$("#login_btn").click();
    }
});
</script>
</html>