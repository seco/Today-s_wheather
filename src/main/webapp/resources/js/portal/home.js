function loginValidCheck(){
	var userId   = $("#userId").val();
	var userPass = $("#userPass").val();
	var flag     = 0;
	if(userId == '' && userId == null){
		$("#errId").text('아이디는 필수값 입니다.');
		$("#userId").focus();
		flag = 1;
	}
	if(userPass == '' && userPass == null){
		$("#errPass").text('비밀번호는 필수값 입니다.');
		$("#userPass").focus();
		flag = 1;
	}
	if(flag != 1)
		login();
}
function registValidCheck(){
	if($('#frm').validate({
        rules: {
            userId:{required:true, minlength:3},
            userPass: "required",
            userPassCheck: {required:true, equalTo:'#userPass'},               
        },
        messages: {
            userID: {
                 required:"아이디를 입력하시오.",
                 minlength: jQuery.format("아이디는 {0}자 이상 입력해주세요!")
            },
            userPass:"암호를 입력하시오.",
            userPassCheck: {
                required: "암호확인를 입력하시오.",
                equalTo:"암호를 다시 확인하세요" },
        }       
    }).form() == false)
		return false;
	if($("#emailFirst").val() == '' || $("#emailFirst").val() ==null){
		alert("이메일을 입력해 주세요");
		$("#emailFirst").focus();
		return false;
	}
	if($("#emailSecond").val() == '' || $("#emailSecond").val() == null){
		alert("이메일을 입력해 주세요");
		$("#emailSecond").focus();
		return false;
	}
	if($("#pnoFirst").val() == '' || $("#pnoFirst").val() == null){
		alert("전화번호를 입력해 주세요");
		$("#pnoFirst").focus();
		return false;
	}
	if($("#pnoSecond").val() == '' || $("#pnoSecond").val() == null){
		alert("전화번호를 입력해 주세요");
		$("#pnoSecond").focus();
		return false;
	}
	if($("#pnoThird").val() == '' || $("#pnoThird").val() == null){
		alert("전화번호를 입력해 주세요");
		$("#pnoThird").focus();
		return false;
	}
	var userEmail = $("#emailFirst").val() + '@' + $("#emailSecond").val();
	var userPno   = $("#pnoFirst").val() + '-' + $("#pnoSecond").val() + '-' + $("#pnoThird").val();
	login();
}


function goPage(data){
	var frm = document.frm;
	if(data.resultMsg != '' && data.resultMsg != null)
		alert(data.resultMsg);
	frm.target = "_self";
	frm.action=data.resultPage; 
	frm.submit();
}

function goRegist(){
	var frm = document.frm;
	frm.action = '/portal/goRegist.do';
	frm.target = "_self";
	frm.submit();
}

function login(){
	fnValAjax('frm','/portal/login.do','goPage');
}
function regist(){
	fnValAjax('frm','/portal/regist.do','goPage');
}
function goHome(){
	frm.action="/home.do";
	frm.target ="_self";
	frm.submit();
}