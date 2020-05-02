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
        <jsp:include page="/header.jsp"></jsp:include>
        <div id="aboutUS">
        <font color="red">公司路线:</font><p>我们公司一直以来认真学习马克思列宁主义、毛泽东思想、邓小平理论和“三个代表”重要思想，学习科学发展观，中国共产党总书记习近平的路线、方针、政策和决议，学习党的基本知识，学习科学、文化、法律和业务知识，努力提高为人民服务的本领。</p>
		<font color="red">公司原则:</font><p>贯彻执行党的基本路线和各项方针、政策，带头参加改革开放和社会主义现代化建设，带动群众为经济发展和社会进步艰苦奋斗，在生产、工作、学习和社会生活中起先锋模范作用。</p>
		        <p>坚持党和人民的利益高于一切，个人利益服从党和人民的利益，吃苦在前，享受在后，克己奉公，多做贡献。</p>
		        <p>自觉遵守党的纪律，模范遵守国家的法律法规，严格保守党和国家的秘密，执行党的决定，服从组织分配，积极完成党的任务。</p>
		        <p>维护党的团结和统一，对党忠诚老实，言行一致，坚决反对一切派别组织和小集团活动，反对阳奉阴违的两面派行为和一切阴谋诡计。</p>
		        <p>切实开展批评和自我批评，勇于揭露和纠正工作中的缺点、错误，坚决同消极腐败现象作斗争。</p>
	            <p>密切联系群众，向群众宣传党的主张，遇事同群众商量，及时向党反映群众的意见和要求，维护群众的正当利益。</p>
	            <p>发扬社会主义新风尚，带头实践社会主义荣辱观，提倡共产主义道德，为了保护国家和人民的利益，在一切困难和危险的时刻挺身而出，英勇斗争，不怕牺牲。</p> 
                <font color="white"> 下面进入正题：</font><a href="./image/error.png"><font color="yellow">点击进入</font></a>
        </div>
       <jsp:include page="/foot.jsp"></jsp:include>
         </div>
  </body>
 </html>