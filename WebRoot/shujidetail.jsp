<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>�鼮</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'��������',550,250) ;
}
</script> 
<%

	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"shuji");
	
	if(request.getParameter("dztp")!=null)
	{
		String sqldz="";
		if(request.getParameter("dztp").equals("d"))
		{
			sqldz="update shuji set dianzan_d=dianzan_d+1 where id="+id;
		}
		if(request.getParameter("dztp").equals("c"))
		{
			sqldz="update shuji set dianzan_c=dianzan_c+1 where id="+id;
		}
		 new CommDAO().commOper(sqldz); 
	}
     %>
<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
    <section id="introduce">
        <div class="container">
			<div class="head text-center">
                    <h3>�鼮</h3>
            </div>
          
		  
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%' height=44>��ţ�</td><td width='39%'><%=mqt.get("bianhao")%></td><td  rowspan=5 align=center><a href=<%=mqt.get("fengmian")%> target=_blank><img src=<%=mqt.get("fengmian")%> width=228 height=215 border=0></a></td></tr><tr>         <td width='11%' height=44>���ࣺ</td><td width='39%'><%=mqt.get("fenlei")%></td></tr><tr>         <td width='11%' height=44>�鼮���ƣ�</td><td width='39%'><%=mqt.get("shujimingcheng")%></td></tr><tr>         <td width='11%' height=44>���ߣ�</td><td width='39%'><%=mqt.get("zuozhe")%></td></tr><tr>                  <td width='11%' height=44>�����磺</td><td width='39%'><%=mqt.get("chubanshe")%></td></tr><tr>                  <td width='11%' height=100  >���ݣ�</td><td width='39%' colspan=2 height=100 ><%=mqt.get("neirong")%></td></tr><tr><td colspan=3 align=center>������:<a href="shujidetail.jsp?id=<%=id%>&dztp=d"><img src="qtimages/ding.gif" width="40" height="40"> <%HashMap mdz = new CommDAO().getmap(id,"shuji");out.print(mdz.get("dianzan_d"));%></a> <a href="shujidetail.jsp?id=<%=id%>&dztp=c"><img src="qtimages/cai.gif" width="40" height="40"><%out.print(mdz.get("dianzan_c"));%></a> </td></tr><tr>							 
                                <td colspan="3"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
                                  <tr>
                                    <td width="30" align="center" bgcolor="CCFFFF">���</td>
                                    <td width="471" bgcolor='#CCFFFF'>��������</td>
                                    <td width="88" bgcolor='#CCFFFF'>����</td>
                                    <td width="88" bgcolor='#CCFFFF'>������</td>
                                    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
                                  </tr>
                                   <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='shuji' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
                                  <tr>
                                    <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
                                    <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
                                    <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
                                    <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
                                  </tr>
                                  <%
								  }
								   %>
                                </table></td>
                                </tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� class='hsgqiehuanshitu' onClick="javascript:history.back()" /><input type=button name=Submit52 value=��ӡ class='hsgqiehuanshitu' onClick="javascript:window.print()" /> <!--jixaaxnnxiu--><input type=button name=Submit53 value=���� class='hsgqiehuanshitu' onClick="javascript:hsgpinglun('shuji','<%=id%>')"/><input type=button name=Submit52 value=�ղ� class='hsgqiehuanshitu' onClick="javascript:location.href='jrsc.jsp?id=<%=mqt.get("id")%>&biao=shuji&ziduan=shujimingcheng';" /></td></tr>
    
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


