<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=kecheng.xls");
%>
<html>
  <head>
    <title>�γ�</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
  </head>

  <body >
  <p>���пγ��б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�γ�����</td>    <td bgcolor='#cccccc' width='90' align='center'>����</td>    <td bgcolor='#cccccc' width='90' align='center'>��Ƶ</td>        
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    

  </tr>
  <% 

    String url = "kecheng_list.jsp?1=1"; 
    String sql =  "select * from kecheng where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("fenlei") %></td>    <td><%=map.get("kechengmingcheng") %></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>    <td width='90' align='center'><a class="btn btn-info btn-small" href='play.jsp?spwj=<%=map.get("shipin") %>' target='_blank'>��˲���</a></td>        
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

