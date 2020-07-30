// 로그인(1 = 아이디가 존재 안 함/ 2 = 암호가 안맞음 / 3 = 로그인 가능)
        var idJ = /^[a-z0-9]{4,12}$/;
    	var checkPoint = 0;
    	$("#update_btn").click(function() {
    		
    		var user_id = $('#USER_ID').val();
    		var user_pw = $('#USER_PW').val(); //기존 pw
    		var user_pw1 = $('#USER_PW1').val(); // 변경 pw
    		var user_pw2 = $('#USER_PW2').val(); // 변경 pw check
    		//아이디 인풋 테스트
			if(idJ.test(user_id)){
				//암호 인풋 테스트
				if(user_pw.length >= 8 && user_pw.length <= 20){
    				$.ajax({
    					url : 'pw_check.do?USER_PW='+encodeURIComponent(user_pw), // encodeURIComponent()은 URL에 포함되거나 위험성있는 특수문자도 톰캣에게 허용하기 위해 16진수로 변환해줍니다.
    					type : 'post',
    					success : function(data) {
    						if ($.trim(data) == "1") {
								// 1 : 아이디가 존재하지 않는 경우
								$("#id_check").text("id오류입니다.");
								$("#id_check").css("color", "red");
								$("#pw_check").text("");
							} else if($.trim(data) == "2"){
								// 2 : 아이디는 존재하나 암호는 맞지않는 경우
								$("#id_check").text("");
								$("#pw_check").text("기존 암호가 맞지않습니다.");
								$("#pw_check").css("color", "red");
							} else if($.trim(data) == "3"){
								// 3 : 검사 성공
								$("#id_check").text("");
								$("#pw_check").text("암호가 확인되었습니다.");
								$("#pw_check").css("color", "green");
								//변경할 암호들 인풋 테스트
								//암호 인풋 테스트
								if(user_pw1.length >= 8 && user_pw1.length <= 20){
									if(user_pw1 == user_pw2 ){
										$("#frm_update").submit(); //비밀번호 업데이트
									}else{
										$('#pw_check2').text("변경 할 비밀번호와 같지않습니다.");
										$('#pw_check2').css('color', 'red');
										$("#id_check").text("");
										$("#pw_check1").text("");
										$("#pw_check").text("");
									}
								}else if(user_pw1 == ""){
									$('#pw_check1').text("패스워드를 입력해주세요.");
									$('#pw_check1').css('color', 'red');
									$("#id_check").text("");
									$("#pw_check2").text("");
									$("#pw_check").text("");
								}else {
									$('#pw_check1').text("암호는 8~20자리만 가능합니다.");
									$('#pw_check1').css('color', 'red');
									$("#id_check").text("");
									$("#pw_check2").text("");
									$("#pw_check").text("");
								}
								
							}
    				
    					}, error : function(request, error) {
    						console.log("업데이트 오류 발생");
    						console.log("code:"+request.status+"\n"+"message:"+request.responseText);
    					}
    				});
				}else if(user_pw == ""){
					$('#pw_check').text('패스워드를 입력해주세요.');
					$('#pw_check').css('color', 'red');
					$("#id_check").text("");
				}else {
					$('#pw_check').text("암호는 8~20자리만 가능합니다.");
					$('#pw_check').css('color', 'red');
					$("#id_check").text("");
				} 
			} else if(user_id == ""){
				$('#id_check').text('아이디를 입력해주세요.');
				$('#id_check').css('color', 'red');
				$("#pw_check").text("");
				
			} else {
				$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
				$('#id_check').css('color', 'red');
				$("#pw_check").text("");
			}
    	});