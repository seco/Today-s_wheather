<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/portal/include/incTop.jspf" %>
<script type="text/javascript" src="<c:url value='/resources/js/portal/home.js' />"></script>

</head>
<body>

	<div>
		<h2>오늘 날씨는?</h2>
	</div><br/><br/>
	
	<form id="frm" method="POST">
		<div>
			<span id="errId"></span>
			<ul>
				<li><span>ID</span></li>
				<li><input type="text" id="userId" name="userId"></li>
			</ul>
			<span id="errPass"></span>
			<ul>
				<li><span>PASSWORD</span></li>
				<li><input type="password" id="userPass" name="userPass"></li>
			</ul>
			<ul>
				<li><input type="button" onclick="loginValidCheck()" value="로그인"></li>
				<li><input type="button" onclick="goRegist()" value="회원가입"></li>
			</ul>
		</div>
	</form>
</body>
</html>
