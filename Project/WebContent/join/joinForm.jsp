<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	

<!-- 	���̵� �ߺ�üũ�κ� Spring���� �ϴ¹�� �˾ƺ���
 <script type="text/javascript">
	function openConfirmId(userinput) {
		// ���̵� �Է��ߴ��� �˻�
		if (userinput.id.value == "") {
			alert("���̵� �Է��ϼ���");
			return;
		}
		// url�� ����� �Է� id�� �����մϴ�.
		url = "idConfirmCheck.do";

		// ���ο� �����츦 ���ϴ�.
		open(url,"confirm","toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300, height=200");
	}
</script> -->
 

	<!-- ���� ���� frame�� ��ġ�鼭 form�κ� ���� -> main frame���� form ���� -->
<form action="joinPro.do" method="post">
	<div id="menu">
			<div id="menuleft">
				<div id="id">ID</div>
				<div id="pw">PW</div>
				<div id="name">�̸�</div>
				<div id="email">e-mail</div>
			</div>
			<div id="menuright">
				<div id="id1">
					<input type="text" name="memId" size="14">&nbsp;<input	type="button" name="idCheck" value="�ߺ�üũ"	OnClick="openConfirmId(this.form)" />
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
					<input type="submit" value="���Խ�û" />&nbsp;<input type="reset"	value="���ۼ�" />
				</div>
			</div>
	</div>
</form>