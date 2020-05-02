<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
   <title>医药商务系统</title> 
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link rel="stylesheet" href="reset.css" />
   <link rel="stylesheet" href="index.css" />
  </head> 
  <body>
    <div id="container">
    		<div id="header">
              <img  src="./image/logo.jpg"     alt="" id="logo"/>
               <img src="./image/header_1.jpg" alt="" id="header1"/>
               <img src="./image/header_2.jpg" alt="" id="header2"/>
               <img src="./image/header_3.jpg" alt="" id="header3"/>
    			<ul id="nav">
    			  <li><a href="index.jsp">首页</a></li>
                  <li><a href="http://baike.baidu.com/link?url=iX0ohAQLtpzZNAgc1CIAZP1tlzhq-1CRZ8pO80f0pRpIv1kYxeB9ltVxcB0KnljzdH4xbw7h8aoVD5u9gXurkFsaKht9Q__FtkT-KoZeAEq">IT服务</a></li>
                  <li><a href="http://xueshu.baidu.com/s?wd=%E5%8C%BB%E8%8D%AF%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E7%B3%BB%E7%BB%9F&tn=SE_baiduxueshu_c1gjeupa&ie=utf-8&sc_hit=1">医药商务系统</a></li>
                  <li><a href="aboutUS.jsp">关于我们</a></li>
    			</ul>
    		</div>
    		<div id="banner">
                <img src="./image/banner.jpg" alt="" />
            </div>
    		<div id="admincontent">
    		   <div id="admintitle">
    		   欢迎管理员 <s:property value="#session.user.username"/>
    		  <a href="loginout.action"><s:submit value="注销"></s:submit></a> 
    		   </div>
    		   <div id="adminauthority">
    		    <div class="firsttitle"><font size="5" style="float:left color:black">订单管理</font>   		     
    		     <li><a href="orderlist.action">●订单列表</a></li>
    		     <li><a href='<%=basePath%>admin/ordersearch.jsp'>●订单查询</a></li>
    		     <li><a href="<%=basePath%>admin/orderadd.jsp">●订单添加</a></li>
    		    </div>    		    
    		    <div class="secondtitle"><font size="5" style="float:left color:black">用户管理</font>  		     
                 <li><a href="userlist.action">●用户列表</a></li>
    		     <li><a href="<%=basePath%>admin/usersearch.jsp">●查询用户</a></li>
    		     <li><a href="<%=basePath%>admin/useradd.jsp">●添加用户</a></li>
    		    </div>	    
    		    <div class="thirdtitle"><font size="5" style="float:left color:black">商品管理</font>
    		     <li> <a href="druglist.action">●药品列表</a></li>
    		     <li><a href="<%=basePath%>admin/drugsearch.jsp">●查询商品</a></li>
    		     <li><a href="<%=basePath%>admin/drugadd.jsp">●添加商品</a></li>
    		   </div>
    		 </div>
    	     </div>
    		 <div id="footer">
                <ul>
                    <li><a href="#">联系我们&nbsp;</a></li>
                    <li><a href="#">合作网站&nbsp;</a></li>
                    <li><a href="#">友情链接&nbsp;</a></li>
                    <li><a href="#">加入我们&nbsp;</a></li>
                    <li><a href="#">更多了解&nbsp;</a></li>
                </ul>
               <address>&copy;2016-20** **市******有限公司 版权所有 http://www.lionhit.com *ICP备07020337号</address>
             </div>
         </div>
  </body>
 </html>