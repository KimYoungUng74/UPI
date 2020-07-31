// 로그인(1 = 아이디가 존재 안 함/ 2 = 암호가 안맞음 / 3 = 로그인 가능)
        var idJ = /^[가-힣a-z0-9]$/;
    	var checkPoint = 0;
    	$("#write_btn").click(function() {	
    		var INDICATORS_NAME = $('input[name=INDICATORS_NAME]').val();
    		var DIVISION_NAME = $('#DIVISION_NAME').val();
    		//아이디 인풋 테스트
			if(idJ.test(user_id)){
				//암호 인풋 테스트
				if(user_pw.length >= 8 && user_pw.length <= 20){
    				$.ajax({
    					url : 'login_check.do?USER_ID='+user_id+'&USER_PW='+encodeURIComponent(user_pw), // encodeURIComponent()은 URL에 포함되거나 위험성있는 특수문자도 톰캣에게 허용하기 위해 16진수로 변환해줍니다.
    					type : 'post',
    					success : function(data) {
    						if ($.trim(data) == "1") {
								// 1 : 아이디가 존재하지 않는 경우
								$("#id_check").text("존재하지 않는 아이디입니다.");
								$("#id_check").css("color", "red");
								$("#pw_check").text("");
							} else if($.trim(data) == "2"){
								// 2 : 아이디는 존재하나 암호는 맞지않는 경우
								$("#id_check").text("");
								$("#pw_check").text("암호가 맞지않습니다.");
								$("#pw_check").css("color", "red");
							} else if($.trim(data) == "3"){
								// 3 : 로그인 검사 성공
								$("#id_check").text("");
								$("#pw_check").text("");
								//로그인 실행
								$("#frm_login").submit();
							}
    				
    					}, error : function(request, error) {
    						console.log("로그인 오류 발생");
    						console.log("code:"+request.status+"\n"+"message:"+request.responseText);
    					}
    				});
				}else if(user_pw == ""){
					$('#pw_check').text('패스워드를 입력해주세요');
					$('#pw_check').css('color', 'red');
					$("#id_check").text("");
				}else {
					$('#pw_check').text("암호는 8~20자리만 가능합니다");
					$('#pw_check').css('color', 'red');
					$("#id_check").text("");
				} 
			} else if(user_id == ""){
				$('#id_check').text('아이디를 입력해주세요');
				$('#id_check').css('color', 'red');
				$("#pw_check").text("");
				
			} else {
				$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다");
				$('#id_check').css('color', 'red');
				$("#pw_check").text("");
			}
    	});