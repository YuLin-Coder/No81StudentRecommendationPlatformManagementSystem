<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=xuqiuxinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>����������Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>�û���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�ظ�</td>    <td bgcolor='#cccccc' width='80' align='center'>�Ƿ����</td><td bgcolor='#cccccc' width='120'>��˻ظ�</td>
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "xuqiuxinxi_list.jsp?1=1"; 
    String sql =  "select * from xuqiuxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("xuqiu") %></td>    <td><%=map.get("huifu") %></td>    <td align='center'><a class="btn btn-info btn-small" href="sh2.jsp?id=<%=map.get("id")%>&tablename=xuqiuxinxi"><%=map.get("issh")%></a></td><td><%=map.get("shhf")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

