 <%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
 <%
    if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")==""){
     %>
	 	  <form action="jspmxsxxgxhtjpthsg9214X1CB?ac=login&amp;a=a" method="post" name="f11" id="f11" style="display: inline">
    <div class="modal fade" id="myLoginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">��¼</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">�û���</span>
                        <input type="text" class="form-control" id="username" name="username" placeholder="�������û���">
                    </div>
                    <div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">����</span>
                        <input type="password" class="form-control" id="pwd1" name="pwd1" placeholder="����������">
                    </div>
					<div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">Ȩ��</span>
                       <select name='cx' id='cx' class="form-control">
                                  <option value='����Ա'>����Ա</option><option value='ע���û�'>ע���û�</option>
                                </select>
                    </div>
					<div class="input-group mb">
                        <span class="input-group-addon" id="basic-addon1">��֤��</span>
                        <input type="text" class="form-control" id="pagerandom" name="pagerandom" placeholder="��֤��">
						<a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle" /></a>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">ȡ��</button>
                    <button type="submit" class="btn btn-primary">ȷ��</button>
                </div>
            </div>
        </div>
    </div>
	</form>
 <script type="text/javascript">
 function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 
function checklog()
{
	if(document.f11.username.value=="" || document.f11.pwd1.value=="" || document.f11.pagerandom.value=="")
	{
		alert("����������");
		return false;
	}
}
  </script>
<%}%>
