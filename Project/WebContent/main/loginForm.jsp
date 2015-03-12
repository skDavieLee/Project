<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.memID == null }">
	<form action="loginPro.do" method="post">
		<input type="text" name="memId" size="9" />
		<br />
		<input type="password" name="memPw" size="9" />
		<br />
		
		<input type="submit" value="로그인" />
		<a href="joinForm.do">회원가입</a>
		<a href="">ID/PW찾기</a>
	</form>
</c:if>

<c:if test="${sessionScope.memID != null }">
	<form action="logoutPro.do" method="post">
		${sessionScope.memID }님 환영합니다.
		<input type="submit" value="로그아웃" />
	</form>
</c:if>