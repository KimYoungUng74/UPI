// 로그인(1 = 아이디가 존재 안 함/ 2 = 암호가 안맞음 / 3 = 로그인 가능)
var idJ = /^[가-힣a-z0-9A-Z/-_.]{1,100}$/;
var checkPoint = 0;
$("#write_btn").click(function() {
	var INDICATORS_NAME = $("#INDICATORS_NAME").val();
	var DIVISION_NAME = $("#DIVISION_NAME").val();
	var COL_METHOD = $("#COL_METHOD").val();
	var TARGET_VAL = $("#TARGET_VAL").val();
	var EVAL_METHOD = $("#EVAL_METHOD").val();
	var EVAL_STANDARD = $("#EVAL_STANDARD").val();
	var IS_NEGATIVE = $("#IS_NEGATIVE").val();
	var ELEMENTS = $("#ELEMENTS").val();
	var input_ele = $("#input_ele").val();
	var FORMULA_input = $("#FORMULA_input").val();
	
	var check1 = $("input:checkbox[id='customCheck1']").is(":checked");
	var check2 = $("input:checkbox[id='customCheck2']").is(":checked");
	var check3 = $("input:checkbox[id='customCheck3']").is(":checked");
	var check4 = $("input:checkbox[id='customCheck4']").is(":checked");
	var check5 = $("input:checkbox[id='customCheck5']").is(":checked");

	if (check1) {
		checkPoint++;
	} else if (check2) {
		checkPoint++;
	} else if (check3) {
		checkPoint++;
	} else if (check4) {
		checkPoint++;
	} else if (check5) {
		checkPoint++;
	}

	if (!idJ.test(INDICATORS_NAME)) {
		if (INDICATORS_NAME == "") {
			alert("지표이름을 입력하세요");
		} else {
			alert("지표이름에 잘못 된 값을 입력되었습니다.");
		}
		$("#INDICATORS_NAME").focus();
	} else if (!idJ.test(DIVISION_NAME)) {
		if (DIVISION_NAME == "") {
			alert("관리부서를 선택하세요");
		} else {
			alert("관리부서에 잘못 된 값을 입력되었습니다.");
		}
	} else if (checkPoint == 0) {
		alert("활용 사업을 하나이상 선택하세요");
	} else if (!idJ.test(COL_METHOD)) {
		if (COL_METHOD == "") {
			alert("수집방법을 선택하세요");
		} else {
			alert("수집방법에 잘못 된 값을 입력되었습니다.");
		}
	} else if (!idJ.test(TARGET_VAL)) {
		if (TARGET_VAL == "") {
			alert("목표값을 입력하세요");
		} else {
			alert("목표값에 잘못 된 값을 입력되었습니다.");
		}
		$("#TARGET_VAL").focus();
	} else if (!idJ.test(EVAL_METHOD)) {
		if (EVAL_METHOD == "") {
			alert("평가방법을 선택하세요");
		} else {
			alert("평가방법에 잘못 된 값을 입력되었습니다.");
		}
	} else if (!idJ.test(EVAL_STANDARD)) {
		if (EVAL_STANDARD == "") {
			alert("평가기준을 입력하세요");
		} else {
			alert("평가기준에 잘못 된 값을 입력되었습니다.");
		}
		$("#EVAL_STANDARD").focus();
	} else if (!idJ.test(IS_NEGATIVE)) {
		if (IS_NEGATIVE == "") {
			alert("등급기준을 선택하세요");
		} else {
			alert("등급기준에 잘못 된 값을 입력되었습니다.");
		}
	} else if (ELEMENTS == "") {
		alert("요소가 비었습니다 요소를 입력하세요");
		$("#input_ele").focus();
	} else if (FORMULA_input == "") {
		alert("산출식이 비었습니다 산출식을 등록하세요");
	} else {
		$("#submitform").submit();
	}
});