<%@ page language="java" import="java.util.*,org.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <title>ҽҩ����ϵͳ</title> 
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
    			  <li><a href="index.jsp">��ҳ</a></li>
                  <li><a href="http://baike.baidu.com/link?url=iX0ohAQLtpzZNAgc1CIAZP1tlzhq-1CRZ8pO80f0pRpIv1kYxeB9ltVxcB0KnljzdH4xbw7h8aoVD5u9gXurkFsaKht9Q__FtkT-KoZeAEq">IT����</a></li>
                  <li><a href="http://xueshu.baidu.com/s?wd=%E5%8C%BB%E8%8D%AF%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E7%B3%BB%E7%BB%9F&tn=SE_baiduxueshu_c1gjeupa&ie=utf-8&sc_hit=1">ҽҩ����ϵͳ</a></li>
                  <li><a href="aboutUS.jsp">��������</a></li>
    			</ul>
    		</div>
            <div id="register_page">
              <s:form action="register.action" method="post" name="form">
              <s:textfield name="user.username" label="�û���" ></s:textfield>
              <s:textfield name="user.password" label="����" cssStyle="margin-top:15px"></s:textfield>
              <s:radio name="user.sex" label="�Ա�" cssStyle="margin-top:15px" list="#{'M':'��','F':'Ů'}" listKey="key" listValue="value" value="'M'"></s:radio>
              <s:textfield name="user.phone" label="�绰" cssStyle="margin-top:15px"></s:textfield>
              <s:textarea rows="3.5" cols="45" name="user.address" label="��ַ" cssStyle="margin-top:15px"></s:textarea>
              <td colspan="2" align="center"/><s:submit value="ע��"  cssStyle="margin-top:5px"></s:submit>
              </s:form>
            </div>
            <div id="footer">
                <ul>
                    <li><a href="#">��ϵ����&nbsp;</a></li>
                    <li><a href="#">������վ&nbsp;</a></li>
                    <li><a href="#">��������&nbsp;</a></li>
                    <li><a href="#">��������&nbsp;</a></li>
                    <li><a href="#">�����˽�&nbsp;</a></li>
                </ul>
               <address>&copy;2016-20** **��******���޹�˾ ��Ȩ���� http://www.lionhit.com *ICP��07020337��</address>
            </div>
      </div>