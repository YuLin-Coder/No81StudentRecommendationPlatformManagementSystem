<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	 <link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����������Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �û�����<input name="yonghuming" type="text" id="yonghuming" class="form-control2"  />
     <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>�û���</td>
    <td bgcolor='#cccccc'>����</td>
    <td bgcolor='#cccccc'>����</td>
    <td width='80' align='center' bgcolor='#cccccc'>�Ƿ����</td>
    <td width='120' bgcolor='#cccccc'>��˻ظ�</td>
    <td width="138" align="center" bgcolor="cccccc">���ʱ��</td>
    <td width="220" align="center" bgcolor="cccccc">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"xuqiuxinxi"); 
    String url = "xuqiuxinxi_list2.jsp?1=1"; 
    String sql =  "select * from xuqiuxinxi where yonghuming='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("yonghuming")=="" ||request.getParameter("yonghuming")==null ){}else{sql=sql+" and yonghuming like '%"+request.getParameter("yonghuming")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("yonghuming") %></td>
 <td><%=map.get("xingming") %></td>
 <td><%=map.get("xuqiu") %></td>
 <td align='center'><%=map.get("issh")%></td>
 <td><%=map.get("shhf")%></td>
 <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center">  <a class="btn btn-info btn-small" href="xuqiuxinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a>  </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

