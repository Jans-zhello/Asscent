<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript">
   function test()
  { 
  if(document.form1.contact.value == ""||document.form1.somebody.value == "")
   {
	  alert("请先登录，别闹"); 
	  document.form.contact.focus();
	  document.form.somebody.focus();
	  return false; 
   }
  }  
  </script>
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
    			  <li id="firstpage"><a href="index.jsp">首页</a></li>
                  <li><a href="http://baike.baidu.com/link?url=iX0ohAQLtpzZNAgc1CIAZP1tlzhq-1CRZ8pO80f0pRpIv1kYxeB9ltVxcB0KnljzdH4xbw7h8aoVD5u9gXurkFsaKht9Q__FtkT-KoZeAEq">IT服务</a></li>
                  <li><a href="http://xueshu.baidu.com/s?wd=%E5%8C%BB%E8%8D%AF%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E7%B3%BB%E7%BB%9F&tn=SE_baiduxueshu_c1gjeupa&ie=utf-8&sc_hit=1">医药商务系统</a></li>
                  <li><a href="aboutUS.jsp">关于我们</a></li>
    		   </ul>
    		</div>
            <div id="banner">
                <img src="./image/banner.jpg" alt="" />
            </div>
    		<div id="main">
    			<div id="lside">
    		       <div class="subtitle">
                   <img src="./image/circle.gif" alt="" /> 
                   <h1>医药浏览</h1>
                   <a href="please.jsp">More&gt;&gt;</a>     
                   </div>
    		       <div class="four">
                   <h2>药品展示1</h2> 
                   <img src="./image/medicine1.jpg" />
                   <ul>
                      <li><a href="please.jsp">药品说明</a></li>
                      <li><a href="please.jsp">药品订单</a></li>
                      <li><a href="please.jsp">药品评价</a></li>
                      <li><a href="please.jsp">其他</a></li>
                   </ul>     
                   </div>
    		       <div class="four">
                    <h2>药品展示2</h2> 
                   <img  src="./image/medicine2.jpg" />
                   <ul>
                      <li><a href="please.jsp">药品说明</a></li>
                      <li><a href="please.jsp">药品订单</a></li>
                      <li><a href="please.jsp">药品评价</a></li>
                      <li><a href="please.jsp">其他</a></li>
                   </ul>      
                   </div>
    		       <div class="four">
                   <h2>药品展示3</h2> 
                   <img src="./image/medicine3.jpg" />
                   <ul>
                      <li><a href="please.jsp">药品说明</a></li>
                      <li><a href="please.jsp">药品订单</a></li>
                      <li><a href="please.jsp">药品评价</a></li>
                      <li><a href="please.jsp">其他</a></li>
                   </ul>      
                   </div>
    		       <div class="four">
                   <h2>药品展示4</h2> 
                   <img src="./image/medicine4.jpg" />
                   <ul>
                      <li><a href="please.jsp">药品说明</a></li>
                      <li><a href="please.jsp">药品订单</a></li>
                      <li><a href="please.jsp">药品评价</a></li>
                      <li><a href="please.jsp">其他</a></li>
                   </ul> 
                   </div>		
    			</div>
                <div id="rside">
                	<div id="subtitle">
                    <img src="./image/circle.gif" alt="" /> 
                    <h1>入口</h1> 
                    <a href="Register.jsp">注册&gt;&gt;</a>  
                    </div>
                    <div id="login">
                       <form action="login.action" method="post" name="form">
                       <li>用户名:<input type="text" name ="user.username" value=""/></li>
                       <br>
                       <li>密&nbsp;&nbsp;&nbsp;码:<input type="password" name ="user.password" value=""/></li>
                       <br>
                       <span id ="row">
                      <td colspan="2" align="center"><input type="submit" value="登录"/>
                      <a href="index.jsp"><input type="button" value="重置"/></a>
                       </span>
                      </form>
                     </div>
                    <div id="contact">
                    <img src="./image/circle.gif" alt="" /> 
                    <h1>用户反馈</h1>
                    </div>
                    <div id="content">
                    <form  method="post" name="form1" onsubmit="return test()">
                      联系电话:<td><input type= "text" name = "contact" value=""/></td><br/>
                      联系人：<td><input type= "text" name = "somebody" value=""/></td><br/>   
                    <br>
                    <input type="submit" value="反馈">
                   </form>
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
