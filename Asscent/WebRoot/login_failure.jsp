<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>医药商务系统</title> 
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <link rel="stylesheet" href="reset.css" />
   <link rel="stylesheet" href="index.css" />
  </head> 
  <body>
    <div id="container">
    		<div id="header">
              <img src="./image/logo.jpg"  alt="" id="logo"/>
               <img src="./image/header_1.jpg" alt="" id="header1"/>
               <img src="./image/header_2.jpg" alt="" id="header2"/>
               <img src="./image/header_3.jpg" alt="" id="header3"/>
    			<ul id="nav">
    			  <li><a href="#">首页</a></li>
                  <li><a href="http://baike.baidu.com/link?url=iX0ohAQLtpzZNAgc1CIAZP1tlzhq-1CRZ8pO80f0pRpIv1kYxeB9ltVxcB0KnljzdH4xbw7h8aoVD5u9gXurkFsaKht9Q__FtkT-KoZeAEq">IT服务</a></li>
                  <li><a href="http://xueshu.baidu.com/s?wd=%E5%8C%BB%E8%8D%AF%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E7%B3%BB%E7%BB%9F&tn=SE_baiduxueshu_c1gjeupa&ie=utf-8&sc_hit=1">医药商务系统</a></li>
                  <li><a href="aboutUS.jsp">关于我们</a></li>
    			</ul>
    		</div>
    		<div id = "main">
    		  登录失败,请继续登录
    		 <a href="index.jsp">点击这里</a>
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