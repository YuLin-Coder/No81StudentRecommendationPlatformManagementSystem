<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�鼮</title>
	<link rel="stylesheet" href="images/hsgcommon/common.css" type="text/css">
<link rel="stylesheet" href="images/hsgcommon/div.css" type="text/css">
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����鼮�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���ࣺ<input name="fenlei" type="text" id="fenlei" class="form-control2" />  �鼮���ƣ�<input name="shujimingcheng" type="text" id="shujimingcheng" class="form-control2" />  ���ߣ�<input name="zuozhe" type="text" id="zuozhe" class="form-control2" />
   <input type="submit" name="Submit" value="����" class="btn btn-info btn-small" /> <input type="button" name="Submit2" value="����EXCEL" class="btn btn-info btn-small" onClick="javascript:location.href='shuji_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="cccccc" >  
  <tr>
    <td width="35" height="30" align="center" bgcolor="cccccc">���</td>
    <td bgcolor='#cccccc'>���</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc'>�鼮����</td>    <td bgcolor='#cccccc'>����</td>    <td bgcolor='#cccccc' width='90' align='center'>����</td>    <td bgcolor='#cccccc'>������</td>        
	<td width="90" align="center" bgcolor="#cccccc">���۹���</td>
    <td width="138" height="30" align="center" bgcolor="cccccc">���ʱ��</td>
    
    <td width="220" height="30" align="center" bgcolor="cccccc">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"shuji"); 
    String url = "shuji_list.jsp?1=1"; 
    String sql =  "select * from shuji where 1=1";
	if(request.getParameter("fenlei")=="" ||request.getParameter("fenlei")==null ){}else{sql=sql+" and fenlei like '%"+request.getParameter("fenlei")+"%'";}if(request.getParameter("shujimingcheng")=="" ||request.getParameter("shujimingcheng")==null ){}else{sql=sql+" and shujimingcheng like '%"+request.getParameter("shujimingcheng")+"%'";}if(request.getParameter("zuozhe")=="" ||request.getParameter("zuozhe")==null ){}else{sql=sql+" and zuozhe like '%"+request.getParameter("zuozhe")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="35" align="center"><%=i %></td>
    <td><%=map.get("bianhao") %></td>    <td><%=map.get("fenlei") %></td>    <td><%=map.get("shujimingcheng") %></td>    <td><%=map.get("zuozhe") %></td>    <td width='90' align='center'><a  href='<%=map.get("fengmian") %>' target='_blank'><img src='<%=map.get("fengmian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("chubanshe") %></td>        
	<td width="90" align="center"><a class="btn btn-info btn-small" href="pinglun_list.jsp?id=<%=map.get("id")%>&biao=shuji">���۹���</a></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="220" align="center"><a class="btn btn-info btn-small" href="shuji_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a class="btn btn-info btn-small" href="shuji_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a class="btn btn-info btn-small" href="shujidetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
<p class="fy">${page.info }</p>


  </body>
</html>

