<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <base href="<%=basePath%>">
   <title>ҽҩ����ϵͳ</title> 
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
   <link rel="stylesheet" href="reset.css" />
   <link rel="stylesheet" href="index.css" />
  </head> 
  <body>
    <div id="container">
        <jsp:include page="/header.jsp"></jsp:include>
    		<div id="admincontent">
    		   <div id="admintitle">
    		   ��ӭ����Ա <s:property value="#session.user.username"/>
    		  <a href="loginout.action"><s:submit value="ע��"></s:submit></a> 
    		   </div>
  		   <div id="adminauthority">
    		    <div class="firsttitle"><font size="5" style="float:left color:black">��������</font>   		     
    		     <li><a href="orderlist.action">�񶩵��б�</a></li>
    		     <li><a href='<%=basePath%>admin/ordersearch.jsp'>�񶩵���ѯ</a></li>
    		     <li><a href="<%=basePath%>admin/orderadd.jsp">�񶩵����</a></li>
    		    </div>    		    
    		    <div class="secondtitle"><font size="5" style="float:left color:black">�û�����</font>  		     
                 <li><a href="userlist.action">���û��б�</a></li>
    		     <li><a href="<%=basePath%>admin/usersearch.jsp">���ѯ�û�</a></li>
    		     <li><a href="<%=basePath%>admin/useradd.jsp">������û�</a></li>
    		    </div>	    
    		    <div class="thirdtitle"><font size="5" style="float:left color:black">��Ʒ����</font>
    		     <li> <a href="druglist.action">��ҩƷ�б�</a></li>
    		     <li><a href="<%=basePath%>admin/drugsearch.jsp">���ѯ��Ʒ</a></li>
    		     <li><a href="<%=basePath%>admin/drugadd.jsp">�������Ʒ</a></li>
    		   </div>
    		 </div>
    		 <div id="adminview">
              <s:form action="drugadd.action" method="post" onclick="org.util.JFileDialog.getFile()">
              <br>
              <s:textfield name="drugname" label="ҩƷ��" ></s:textfield>
              <s:textfield name="price" label="�۸�" cssStyle="margin-top:15px"></s:textfield>
              <s:file      name="picture" label="ͼƬ" accept="image/jpeg" cssStyle="margin-top:15px"/>
              <s:textfield name="catalogid" label="catalogID" cssStyle="margin-top:15px"></s:textfield>
              <td colspan="2" align="center"/><s:submit value="���" cssStyle="float:left;margin-left:210px;margin-top:5px"></s:submit>
              </s:form>
    		  </div>
    	     </div>
          <jsp:include page="/foot.jsp"></jsp:include>
         </div>
  </body>
 </html>