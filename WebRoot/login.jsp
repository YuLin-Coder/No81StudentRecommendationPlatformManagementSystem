<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!doctype html>
<html  class="x-admin-sm">
<head>
	<title>��̨��¼</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="images/css/font.css">
    <link rel="stylesheet" href="images/css/login.css">
	  <link rel="stylesheet" href="images/css/xadmin.css">
    <script type="text/javascript" src="images/js/jquery.min.js"></script>
    <script src="images/lib/layui/layui.js" charset="utf-8"></script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 popheight = 39;
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.rand.value=="")
	{
		alert('����������');
		return false;
	}
}
function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
</script>
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">�����¼</div>
        <div id="darkbannerwrap"></div>
        
        <form name="form1" method="post" action="jspmxsxxgxhtjpthsg9214X1CB?ac=adminlogin&a=a" class="layui-form" >
            <input name="username" id="username" placeholder="�û���"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="pwd" id="pwd" lay-verify="required" placeholder="����"  type="password" class="layui-input">
            <hr class="hr15">
			 <select name="cx" id="cx" >
			
            <option value="����Ա">����Ա</option><option value="ע���û�">ע���û�</option>
            </select>
            <hr class="hr15">
			<table><tr>
			
			<td><input name="pagerandom" id="pagerandom" placeholder="��֤��"  type="text" lay-verify="required" class="layui-input" style="width:150px;" ></td><td>&nbsp;&nbsp;<a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp"  class="code"   style="cursor:pointer;width:100px; "> </a></td>
			
			</tr></table>
			 
            <hr class="hr15">
            <input value="��¼" lay-submit lay-filter="login" style="width:100%;" type="submit" onClick="return check();">
            <hr class="hr20" >
        </form>
    </div>

    <script>
        $(function  () {
            layui.use('form', function(){
              var form = layui.form;
              // layer.msg('����������', function(){
              //   //�رպ�Ĳ���
              //   });
              //�����ύ
              form.on('submit(login)', function(data){
                // alert(888)
                document.form1.submit();
                return false;
              });
            });
        })
    </script>
    <!-- �ײ����� -->
    
</body>
</html>
