<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${sessionScope.memID == null }">
	<form action="loginPro.do" method="post">
		<input type="text" name="memId" size="9" />
		<br />
		<input type="password" name="memPw" size="9" />
		<br />
		
		<input type="submit" value="�α���" />
		<a href="joinForm.do">ȸ������</a>
		<a href="">ID/PWã��</a>
	</form>
</c:if>

<c:if test="${sessionScope.memID != null }">
	<form action="logoutPro.do" method="post">
		${sessionScope.memID }�� ȯ���մϴ�.
		<input type="submit" value="�α׾ƿ�" />
	</form>
</c:if>