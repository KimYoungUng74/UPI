<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html lang="kr">

<head>
	<!-- css링크들 임포트 -->
    <c:import url="import/csslink.jsp" charEncoding="UTF-8" >
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
<c:import url="import/javascript.jsp" charEncoding="UTF-8" >
</c:import>

    <script>
        $(".preloader ").fadeOut(); //템플릿에 원래 있던 것
        
        
    	// 로그인(1 = 아이디가 존재 안 함/ 2 = 암호가 안맞음 / 3 = 로그인 가능)
        var idJ = /^[a-z0-9]{4,12}$/;
    	var checkPoint = 0;
    	$("#login_btn").click(function() {
    		// id = "id_reg" / name = "userId"
    		var user_id = $('#USER_ID').val();
    		var user_pw = $('#USER_PW').val();
    		console.log("id:"+user_id+"/pw:"+user_pw);
    		$.ajax({
    			url : '${pageContext.request.contextPath}/login_check.do?USER_ID='+user_id+'&USER_PW='+user_pw,
    			type : 'post',
    			success : function(data) {
    				//아이디 인풋 테스트 (다른 텍스트를 받지않음)
    				if(idJ.test(user_id)){
    					if ($.trim(data) == "1") {
    						// 1 : 아이디가 존재하지 않는 경우
    						$("#id_check").text("존재하지 않는 아이디입니다.");
    						$("#id_check").css("color", "red");
    					} else if($.trim(data) == "2"){
    						// 2 : 아이디는 존재하나 암호는 맞지않는 경우
    						$("#id_check").text("");
							$("#pw_check").text("암호가 맞지않습니다.");
							$("#pw_check").css("color", "red");
    					} else if($.trim(data) == "3"){
    						// 3 : 로그인 검사 성공
    						$("#id_check").text("");
    						$("#pw_check").text("");
    						$("#frm_login").submit();
    					}
					} else if(user_id == ""){
						$('#id_check').text('아이디를 입력해주세요');
						$('#id_check').css('color', 'red');		
						
					} else {
						$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다");
						$('#id_check').css('color', 'red');
					}
    			}, error : function(request, error) {
    				console.log("로그인 오류 발생");
    				console.log("code:"+request.status+"\n"+"message:"+request.responseText);
    			}
    		});
    	});
    </script>
</html>