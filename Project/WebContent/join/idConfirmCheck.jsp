<%--

  ID�ߺ�üũ�κ� ������ ��� jsp���� �����°� ( ����� )

<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "test.myformbean.MYDAO" %>

<html>
<head><title>ID �ߺ�Ȯ��</title>
<link href="style.css" rel="stylesheet" type="text/css">

<% request.setCharacterEncoding("euc-kr");%>

<%
    String id = request.getParameter("id");
	MYDAO manager = MYDAO.getInstance();
    int check = manager.confirmId(id);

%>

<script language="javascript">
  function setid()
    {
    	opener.document.userinput.id.value="<%=id%>";
		self.close();
	}
</script>

<body bgcolor="#aaa">
<%
    if(check == 1) {
%>
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="#18709C"> 
    <td height="39" ><%=id%>�̹� ������� ���̵��Դϴ�.</td>
  </tr>
</table>
<form name="checkForm" method="post" action="idConfirmCheck.jsp">
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td bgcolor="#FFF6EE" align="center"> 
       	�ٸ� ���̵� �����ϼ���.<p>
       <input type="text" size="10" maxlength="12" name="id"> 
       <input type="submit" value="ID�ߺ�Ȯ��">
    </td>
  </tr>
</table>
</form>
<%
    } else {
%>
<table width="270" border="0" cellspacing="0" cellpadding="5">
  <tr bgcolor="#18709C"> 
    <td align="center"> 
      <p>�Է��Ͻ� <%=id%> �� ����Ͻ� �� �ִ� ID�Դϴ�. </p>
      <input type="button" value="�ݱ�" onclick="setid()">
    </td>
  </tr>
</table>
<%
    }
%>
</body>
</html>


 --%>