<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=0">
    <title>ѧ��ѧϰ���Ի��Ƽ�ƽ̨</title>
    <link href="qtimages/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="qtimages/css/index.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<body>
<%@ include file="qttop.jsp"%>
<%@ include file="bht.jsp"%>
   <section id='introduce'>
        <div class='container'>
			<div class='head text-center'><h3>�γ��Ƽ�</h3></div>
            <div class='row'>
			 <%
		  	int ikecheng=0;						
    for(HashMap mapkecheng:new CommDAO().select("select * from kecheng order by dianzan_d desc "))
	{
		ikecheng++;
		if(ikecheng<=4)
		{
		  %>
                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3 works'><a href='kechengdetail.jsp?id=<%=mapkecheng.get("id")%>'><div class='bg'><%=mapkecheng.get("kechengmingcheng")%></div><div class='tab-content item' data-brief=''><img src='<%=mapkecheng.get("fengmian")%>' alt=''></div></a></div>
				<%
		}
	}
			%>
            </div>
        </div>
    </section>

    <section class="wjs_product" id="wjs_product">
        <div class="container">
                <div class="head text-center">
                        <h3>���Ź���</h3>
                        <p>�������Ź��棬Ӧ�о��У�ֻ��������ı��⼴�ɲ鿴��ϸ��Ϣ��</p>
                </div>
           
            <div class="tab-content ">
                <div class="tab-pane active" id="product_nav01">
                    <div class="panel panel-primary mt">
                        <div class="panel-heading">
                            <div style="display:flex">
                                <span class="wjs_icon wjs_icon_news_02 icon-left"></span>
                                <h4 class="panel-title">վ������</h4>
                            </div>
                            <div style="display:flex">
                                <span class="wjs_icon wjs_icon_news_02 icon-right"></span>
                                <h4 class="panel-title">У԰Ȥ��</h4>
                            </div>
                        </div>
                        <div class="panel-body">
                                <div class="panel-body-left">
								<%
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='վ������' order by id desc ",1,7)){
     %>
                                        <a href="gg_detail.jsp?id=<%=map.get("id")%>"><i class="wjs_icon wjs_icon_news_02"></i><%=Info.ensubStr(map.get("biaoti"),30)%><span><%=(String)map.get("addtime").toString().substring(0,10) %></span></a>
										  <%
							}
							%>
                                       
                                </div>
                                <div class="panel-body-right">
                                       <%
    for(HashMap map:new CommDAO().select("select * from xinwentongzhi where leibie='У԰Ȥ��' order by id desc ",1,7)){
     %>
                                        <a href="gg_detail.jsp?id=<%=map.get("id")%>"><i class="wjs_icon wjs_icon_news_02"></i><%=Info.ensubStr(map.get("biaoti"),30)%><span><%=(String)map.get("addtime").toString().substring(0,10) %></span></a>
										  <%
							}
							%>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

  

    <section class="wjs_news" id="wjs_news">
        <div class="container">
                <div class="head text-center">
                    <h3>��������</h3>
                    <p>���½��������֣�������½����Ա��̨�����޸ġ�</p>
                </div>
            <div class="col-md-5 imgs">
                <ul class="nav nav-tabs">
                    <li class="col-md-6"><img src="qtimages/slide_01_640x340.jpg" class="col-md-12"></li>
                    <li class="col-md-6"><img src="qtimages/slide_02_640x340.jpg" class="col-md-12"></li>
                    <li class="col-md-6"><img src="qtimages/slide_03_640x340.jpg" class="col-md-12"></li>
                    <li class="col-md-6"><img src="qtimages/slide_04_640x340.jpg" class="col-md-12"></li>
                </ul>
            </div>
            <div class="col-md-7">
                <div class="tab-content">
                    <div class="tab-pane active" id="home">
                       ��<% HashMap m1 = new CommDAO().getmaps("leibie","��������","dx");out.print(Info.ensubStr(m1.get("content"),185)); %>
                    </div>
                </div>
            </div>
        </div>
    </section>
   <%@ include file="qtdown.jsp"%>
   <%@ include file="qtuserlog.jsp"%>
    <script src="qtimages/lib/jquery/jquery.min.js"></script>
    <script src="qtimages/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="qtimages/js/index.js"></script>
</body>
</html>
