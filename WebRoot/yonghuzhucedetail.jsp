<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
 <%
  String id=request.getParameter("id");
   %>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>�û���ϸ</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>�û���ϸ</h3>
            </div>
          
		 <%
    HashMap mqt = new CommDAO().getmap(id,"yonghuzhuce");
     %>
                           <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>�û�����</td><td width='39%'><%=mqt.get("yonghuming")%></td><td  rowspan=10 align=center><a href=<%=mqt.get("touxiang")%> target=_blank><img src=<%=mqt.get("touxiang")%> width=228 height=215 border=0></a></td></tr><tr>
         <td width='11%' height=44>���룺</td><td width='39%'>******</td></tr><tr>
         <td width='11%' height=44>������</td><td width='39%'><%=mqt.get("xingming")%></td></tr><tr>
         <td width='11%' height=44>�Ա�</td><td width='39%'><%=mqt.get("xingbie")%></td></tr><tr>
         
         <td width='11%' height=44>���䣺</td><td width='39%'><%=mqt.get("youxiang")%></td></tr>
         <tr>
           <td height=44>���֤��</td>
           <td>******</td>
         </tr>
         <tr>
           <td height=44>�������£�</td>
           <td><%=mqt.get("chushengnianyue")%></td>
         </tr>
         <tr>
           <td height=44>QQ:</td>
           <td><%=mqt.get("QQ")%></td>
         </tr>
         <tr>
           <td height=44>��ַ��</td>
           <td><%=mqt.get("dizhi")%></td>
         </tr>
         <tr>
         <td width='11%' height=44>�ֻ���</td>
         <td width='39%'><%=mqt.get("dianhua")%></td></tr><tr>
         <td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=mqt.get("beizhu")%></td></tr>
		 <tr><td colspan=3 align=center height=44><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />
<input type=button name=Submit52 value=��ӡ onClick="javascript:window.print()" />
</td></tr>
  </table>		  

						  
        </div>
    </section>
	<%@ include file="qtdown.jsp"%>
<%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>
</body>
</html>
