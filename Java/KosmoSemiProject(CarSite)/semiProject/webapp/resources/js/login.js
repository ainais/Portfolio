$(function(){
	var checkCnt = 0;
	var getCheck= RegExp(/^[a-z0-9]{1,10}$/);
	
	$(".doubleCheckID").click(function(){
		
		// 1. 공백 조건 제거
		if($(".userID").val() == null || $(".userID").val() == ""){
			alert("공백을 사용할 수 없습니다.");
			return false;
		}
		// 2. 한번은 중복검사를 실시해야 submit 가능
		checkCnt++;
		
		// 3 ID 최대 10글자 까지만 사용 가능
		if($(".userID").val().length >= 10){
			alert("10글자 이상의 아이디는 사용할 수 없습니다.");s
			return false;
		}
		// 4. id 형식에 맞게 유도하기 => getCheck
		if(!getCheck.test($(".userID").val())){
			alert("아이디는 영어 소문자와 숫자만 사용할 수 있습니다.");
			return false;
		}
		// 5. Final. DB와 아이디 중복 검사
		$.ajax({
			url:"ajaxLoginCheck.do",
			type:"post",
			contentType : "application/x-www-form-urlencoded;charset=UTF-8",
			data:{userID:$(".userID").val()},
			success:function(message){
				$("#idCheckResult").text(message);
			}
		}) // end of ajax
	}) // end of doubleCheciID click
	
	// submit 버튼(confirm)
	$("#confirm").click(function(){
		// 비밀번호 확인
		if($("#userPW").val() == "" || $("#userPW2").val() == ""){
			alert("비밀번호를 입력해주세요.");
			return false;
		}
		if($("#userPW").val() != $("#userPW2").val()){
			alert("비밀번호와 비밀번호 확인 값이 일치하지 않습니다.");
			return false;
		}
		// 이름 확인
		if($("#userName").val() == ""){
			alert("이름을 입력해주세요.");
			return false;
		}
		// 이메일 확인
		if($("#userEmail").val() == ""){
			alert("이메일을 입력해주세요.");
			return false;
		}
		// 전화번호 확인
		if($("#userTel").val() == ""){
			alert("전화번호를 입력해주세요.");
			return false;
		}
		// 주소 확인
		if($("#userAddr").val() == ""){
			alert("주소를 입력해주세요.");
			return false;
		}
		// 생년월일 확인
		if($("#userBirthday").val() == ""){
			alert("생년월일을 입력해주세요.");
			return false;
		}
		
		// 아이디 중복검사를 실시해야만 넘어갈 수 있도록 설계
		if(checkCnt>0){
			if($("#idCheckResult").text() == "사용 가능한 아이디 입니다."){
				$("#ajaxLoginForm").submit();
			}
		}
		else{
			alert("아이디 중복검사를 실시해주세요.");
			return false;
		}
	}) // end of confirm click
}) // end of function