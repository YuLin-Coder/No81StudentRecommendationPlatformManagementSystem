<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!--����ͨ��-->
    <header class="wjs_topBar">
        <div class="container">
            <div class="row">
                    <div class="col-md-3 hidden-xs topBar-brand">
                        <img src="qtimages/code.jpg" class="logo">
                        <span class="name">ѧ��ѧϰ���Ի��Ƽ�ƽ̨</span>
                    </div>
              
                <div class="col-md-3 col-xs-6" style="margin-left:500px;"   >
				 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
					   					 <button class="btn btn-primary" data-toggle="modal" data-target="#myLoginModal">��¼</button> <a href="userreg.jsp" class="btn btn-danger">ע��</a>
										   <%}else{ %>
										    <%=request.getSession().getAttribute("username")%>,[<%=request.getSession().getAttribute("cx")%>]&nbsp; <a href="logout.jsp" onclick="return confirm('ȷ��Ҫ�˳���')" class="btn btn-primary">�˳�</a>&nbsp; <a href="main.jsp" class="btn btn-danger">��̨</a>
										    <%} %>
				
		
                </div>
            </div>
        </div>
    </header>

    <!--������-->
    <nav class="navbar wjs_nav" data-spy="affix" data-offset-top="200">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
				 <ul class='nav navbar-nav ml'>
	<li class=''><a href='index.jsp'>��ҳ</a></li>
		 

		 <li class='show'><a  href='shujilist.jsp' >�鼮</a>
	
</li><li class='show'><a href='zhishidianlist.jsp'>֪ʶ��</a>
	
</li><li class='show'><a  href='kechenglisttp.jsp'>�γ�</a>
	
</li><li class='show'><a >������Ϣ</a>
	<div class='pa'><a href='news.jsp?lb=վ������'>վ������</a> <a href='news.jsp?lb=У԰Ȥ��'>У԰Ȥ��</a> <a href='news.jsp?lb=֪ͨ����'>֪ͨ����</a> </div>
</li><li class='show'><a >ϵͳ��Ҫ</a>
	<div class='pa'><a href='dx_detail.jsp?lb=ϵͳ���'>ϵͳ���</a> <a href='dx_detail.jsp?lb=��������'>��������</a> <a href='dx_detail.jsp?lb=��ϵ��ʽ'>��ϵ��ʽ</a> </div>
</li><li class='show'><a >��������</a>
	<div class='pa'><a href='lyb.jsp'>��������</a> <a href='lyblist.jsp'>�鿴����</a> </div>
</li><!--yoxulixuyaxn-->

</ul>
				 
				
            </div>
        </div>
    </nav>
	
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
 </script>
