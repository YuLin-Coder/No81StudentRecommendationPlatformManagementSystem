<%@ page language="java"  pageEncoding="gb2312"%>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <title>ϵͳ��̨����</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
        <link rel="stylesheet" href="images/css/font.css">
        <link rel="stylesheet" href="images/css/xadmin.css">
        <script src="images/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="images/js/xadmin.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
    <body class="index">
        <div class="container">
            <div class="logo">
                <a href="">ѧ��ѧϰ���Ի��Ƽ�ƽ̨</a></div>
            <div class="left_open">
                <a><i title="չ�������" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;"><%=request.getSession().getAttribute("username")%>[<%=request.getSession().getAttribute("cx")%>]</a>
                    <dl class="layui-nav-child">
                      <dd><a href="logout.jsp" target="_parent" >�˳�</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="index.jsp">ǰ̨��ҳ</a></li>
            </ul>
        </div>
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                        <%
if (request.getSession().getAttribute("cx").equals("��������Ա") || request.getSession().getAttribute("cx").equals("��ͨ����Ա")){%><%@ include file="left_guanliyuan.jsp"%><%}
if (request.getSession().getAttribute("cx").equals("ע���û�")){%><%@ include file="left_zhuceyonghu.jsp"%><%}

%>
                
                </ul>
            </div>
        </div>
       
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>�ҵ�����</li></ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='sy.jsp' id="hsgmain" name="hsgmain" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
    </body>
</html>
