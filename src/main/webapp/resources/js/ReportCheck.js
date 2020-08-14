$("#submit_btn").click(function() {
	alert("자주와!!!");
	var PRESENT_VAL = $('#PRESENT_VAL').val();
	
	if (PRESENT_VAL == "") {
		alert("현재값이 비었습니다 현재값을 넣거나 계산하세요");
		$("#iPRESENT_VAL").focus();
	} else {
		$("#submitform").submit();
	}
});