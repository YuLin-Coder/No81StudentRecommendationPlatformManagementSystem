<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�鼮��ϸ</title>
    <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"shuji");
     %>
  �鼮��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#cccccc" >  
   <tr>
     <td width='11%' height=44>��ţ�</td><td width='39%'><%=m.get("bianhao")%></td><td  rowspan=5 align=center><a href=<%=m.get("fengmian")%> target=_blank><img src=<%=m.get("fengmian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>���ࣺ</td><td width='39%'><%=m.get("fenlei")%></td></tr><tr><td width='11%' height=44>�鼮���ƣ�</td><td width='39%'><%=m.get("shujimingcheng")%></td></tr><tr><td width='11%' height=44>���ߣ�</td><td width='39%'><%=m.get("zuozhe")%></td></tr><tr><td width='11%' height=44>�����磺</td><td width='39%'><%=m.get("chubanshe")%></td></tr><tr><td width='11%' height=100  >���ݣ�</td><td width='39%' colspan=2 height=100 ><%=m.get("neirong")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>



