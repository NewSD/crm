<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/sys.css" type="text/css" rel="stylesheet" />

</head>

<body class="emp_body">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td class="topg"></td>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0"  class="wukuang"width="100%">
  <tr>
    <td width="1%"><img src="images/tleft.gif"/></td>
    <td width="44%" align="left">[修改职务]</td>
   
    <td width="52%"align="right">
       <a href="javascript:document.forms[0].submit()"><img src="images/button/save.gif" /></a>
       <a href="role_toBack.action"><img src="images/button/tuihui.gif" /></a>
      
    </td>
    <td width="3%" align="right"><img src="images/tright.gif"/></td>
  </tr>
</table>
<s:form action="role_update" method="post">
<s:hidden name="rm.id"/>
<table width="88%" border="0" class="emp_table" style="width:80%;">
  <tr>
    <td width="10%">部门名称：</td>
    <td width="90%">
    	<s:select name="rm.dm.id" list="depList" listKey="id" listValue="name"/>
	</td>
  </tr>
  <tr>
    <td width="10%">职务名称：</td>
    <td width="90%"><s:textfield name="rm.name"/></td>
  </tr>
</table>
</s:form>
</body>
</html>
