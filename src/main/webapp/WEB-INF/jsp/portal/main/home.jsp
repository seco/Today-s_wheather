<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<script type="text/javascript" src="<c:url value='/resources/js/portal/home.js' />"></script>
<html>
<head>
	<title></title>
</head>

<body>

	<div>
		<h2>오늘 날씨는?</h2>
	</div><br/><br/>
	
	<form id="frm">
		<div>
			<ul>
				<li><span>ID</span></li>
				<li><input type="text" id="userId" name="userId"></li>
			</ul>
			<ul>
				<li><span>PASSWORD</span></li>
				<li><input type="password" id="userPass" name="userPass"></li>
			</ul>
			<ul>
				<li><input type="button" onclick="login()" value="로그인"></li>
				<li><input type="button" onclick="regist()" value="회원가입"></li>
			</ul>
		</div>
	</form>
</body>
</html>
