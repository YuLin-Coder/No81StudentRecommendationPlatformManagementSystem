<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<html>
  <head>
    
    <title>���</title><link rel="stylesheet" href="css.css" type="text/css">
    

  </head>
<%
if(request.getParameter("ac")!=null){
String sql;
sql="update "+request.getParameter("tablename")+" set issh='"+request.getParameter("issh")+"',shhf='"+request.getParameter("shhf")+"' where id="+request.getParameter("id");
new CommDAO().commOper(sql);
out.print("<script>javascript:alert('��˳ɹ���');</script>");
}
HashMap m = new CommDAO().getmap(request.getParameter("id"),request.getParameter("tablename"));
%>


  <body >
    <form action="sh2.jsp?ac=1" name="form1" method="post">
    <table width="32%" height="193" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="9DC9FF" style="border-collapse:collapse">
    <tr>
      <td colspan="2"><div align="center">�������</div></td>
    </tr>
    <tr>
      <td height="58">��˽����</td>
      <td><select name="issh" id="issh">
        <option value="�����">�����</option>
        <option value="��ͨ��">��ͨ��</option>
        <option value="δͨ��">δͨ��</option>
      </select>
      <input name="id" type="hidden" id="id" value="<%=request.getParameter("id")%>"><input name="tablename" type="hidden" id="tablename" value="<%=request.getParameter("tablename")%>"></td>
    </tr>
    <tr>
      <td>��˻ظ���</td>
      <td height="80"><textarea name="shhf" cols="50" rows="5" id="shhf"><%=m.get("shhf")%></textarea></td>
    </tr>
	<script language="javascript">
	document.form1.issh.value="<%=m.get("issh")%>";
	</script>
    
    <tr>
      <td colspan="2" align="center"><input name="Submit" type="submit"  value="ȷ��" />
        <input name="Submit2" type="reset" value="����" /></td>
      </tr>
  </table>
  </form>
  </body>
</html>


