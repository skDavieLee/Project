<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	

<!-- 	아이디 중복체크부분 Spring으로 하는방법 알아보기
 <script type="text/javascript">
	function openConfirmId(userinput) {
		// 아이디를 입력했는지 검사
		if (userinput.id.value == "") {
			alert("아이디를 입력하세요");
			return;
		}
		// url과 사용자 입력 id를 조합합니다.
		url = "idConfirmCheck.do";

		// 새로운 윈도우를 엽니다.
		open(url,"confirm","toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
	}
</script> -->
 

	<!-- 추후 메인 frame과 합치면서 form부분 삭제 -> main frame에서 form 선언 -->
<form action="joinPro.do" method="post">
	<div id="menu">
			<div id="menuleft">
				<div id="id">ID</div>
				<div id="pw">PW</div>
				<div id="name">이름</div>
				<div id="email">e-mail</div>
			</div>
			<div id="menuright">
				<div id="id1">
					<input type="text" name="memId" size="14">&nbsp;<input	type="button" name="idCheck" value="중복체크"	OnClick="openConfirmId(this.form)" />
				</div>
				<div id="pw1">
					<input type="password" name="memPw" size="14">
				</div>
				<div id="name1">
					<input type="text" name="memName" size="10">
				</div>
				<div id="mail1">
					<input type="text" name="memEmail" size="20">
				</div>
				<div id="submit1">
					<input type="submit" value="가입신청" />&nbsp;<input type="reset"	value="재작성" />
				</div>
			</div>
	</div>
</form>