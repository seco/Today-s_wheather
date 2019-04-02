<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/portal/include/incTop.jspf" %>
<script type="text/javascript" src="<c:url value='/resources/js/portal/home.js' />"></script>

<script type="text/javascript">
	$(function(){
		 $( "#userBirth" ).datepicker({
			 changeMonth: true, 
	         changeYear: true,
	         nextText: '다음 달',
	         prevText: '이전 달' 
		 });
	});
</script>

</head>
<body>

	<div>
		<h2>회원 가입!!</h2>
	</div><br/><br/>
	
	<form id="frm" method="POST">
		<input type="hidden" id="userPno"   name="userPno"   value=""/>
		<input type="hidden" id="userEmail" name="userEmail" value=""/>
		<div>
			<ul>
				<li><span>아이디</span></li>
				<li><input type="text"   id="userId"  name="userId"></li>
				<li><input type="button" id="checkId" name="checkId" onclick="checkRgstId()" value="중복확인"></li>
			</ul>
			<ul>
				<li><span>비밀번호</span></li>
				<li><input type="password" id="userPass" name="userPass"></li>
			</ul>
			<ul>
				<li><span>비밀번호 확인</span></li>
				<li><input type="password" id="userPassCheck" name="userPassCheck"></li>
			</ul>
			<ul>
				<!-- datepicker 사용하기  -->
				<li><span>생년월일</span></li>
				<li><input type="text" id="userBirth" name="userBirth"></li>
			</ul>
			<ul>
				<li><span>전화번호</span></li>
				<li>
					<input type="text" id="pnoFirst"  maxlength="3"> -
					<input type="text" id="pnoSecond" maxlength="4"> -
					<input type="text" id="pnoThird"  maxlength="4">	
				</li>
			</ul>
			<ul>
				<li><span>이메일</span></li>
				<li>
					<input type="text" id="emailFirst" > @ 
					<input type="text" id="emailSecond">        
				</li>
			</ul>
			<ul>
				<li><input type="button" onclick="registValidCheck()" value="회원가입"></li>
				<li><input type="button" onclick="goHome()" value="취소하기"></li>
			</ul>
		</div>
	</form>
</body>
</html>
