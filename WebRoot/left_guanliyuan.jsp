<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>ϵͳ�û�����</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='yhzhgl.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>����Ա�û�</cite></a></li>
<li ><a href='mod.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�޸�����</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>�������ݹ���</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='xinwentongzhi_add.jsp?lb=վ������' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>վ���������</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=վ������' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>վ�����Ų�ѯ</cite></a></li>
<li ><a href='xinwentongzhi_add.jsp?lb=У԰Ȥ��' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>У԰Ȥ�����</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=У԰Ȥ��' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>У԰Ȥ�²�ѯ</cite></a></li>
<li ><a href='xinwentongzhi_add.jsp?lb=֪ͨ����' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>֪ͨ�������</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=֪ͨ����' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>֪ͨ�����ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>ϵͳ�������</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='dx.jsp?lb=ϵͳ���' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>ϵͳ�������</cite></a></li>
<li ><a href='dx.jsp?lb=��������' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>������������</cite></a></li>
<li ><a href='dx.jsp?lb=��ϵ��ʽ' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>��ϵ��ʽ����</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>�û�ע�����</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='yonghuzhuce_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�û�ע�����</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>���Թ���</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='liuyanban_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>���Թ���</cite></a></li>

                </ul>
            </li>
			
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>���ͼ����</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='xinwentongzhi_add.jsp?lb=���ͼ' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>���ͼ���</cite></a></li>
<li ><a href='xinwentongzhi_list.jsp?lb=���ͼ' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>���ͼ��ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>�鼮����</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='shuji_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�鼮���</cite></a></li>
<li ><a href='shuji_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�鼮��ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>֪ʶ�����</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='zhishidian_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>֪ʶ�����</cite></a></li>
<li ><a href='zhishidian_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>֪ʶ���ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>�γ̹���</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='kecheng_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�γ����</cite></a></li>
<li ><a href='kecheng_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�γ̲�ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>�������</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='fenlei_add.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�������</cite></a></li>
<li ><a href='fenlei_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�����ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>�������</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='xuqiuxinxi_list.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>�����ѯ</cite></a></li>

                </ul>
            </li>
			<li>
                <a ><i class="iconfont left-nav-li" >&#xe6b8;</i><cite>ϵͳ����</cite><i class="iconfont nav_right">&#xe697;</i></a>
                  <ul class="sub-menu">
							<li ><a href='databack.jsp' target='hsgmain'><i class='iconfont'>&#xe6a7;</i><cite>���ݱ���</cite></a></li>

                </ul>
            </li>






