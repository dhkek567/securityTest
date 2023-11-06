<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Login Form</title>
</head>
<body>
	<h1>Login</h1>
	<h2><c:out value="${error }"/></h2>		<!-- 에러 발생 시, 출력할 메시지 -->
	<h2><c:out value="${logout }"/></h2>	<!-- 로그아웃 시, 출력할 메시지 -->
	
	<!-- post 방식 로그인 인증처리 action은 무조건 
			/login
			username의 name은 무조건 username
			password의 name은 무조건 password
			무조건임
	 -->
	<form action="/login" method="post">
		username : <input type="text" name="username" value=""> <br>
		password : <input type="text" name="password" value=""> <br>
		<!--  name="remember-me" 필수  -->
		<input type="checkbox" name="remember-me"/>Remember Me
		<input type="submit" value="로그인"/>
		<sec:csrfInput/>
		<!-- <sec:csrfInput/> 토큰설정 필수 -->
	</form>

</body>
</html>