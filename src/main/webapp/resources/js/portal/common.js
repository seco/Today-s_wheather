function fnValAjax(url, formName, callBack) {
	$.ajax({
		async : false,
		type: 'POST',
		url: url,
		data : $("#"+formName).serialize(),
		dataType:"json",
		success : function (data) {
			if(!isEmpty(data.vaildErrorMsg)) {
				if(!isEmpty(data.vaildErrorFileId)) {
                    $("#"+data.vaildErrorFileId).focus();
                }
				alert(data.vaildErrorMsg);
				return false ;
			}
			if(callBack != null && callBack != "") {
				window[callBack](data) ;
			}
		}, 
		error: function(data, textStatus, errorThrown) {
			alert("서버에 통신 중에 에러가 발생하였습니다.");
			return false;
		}
	});
}