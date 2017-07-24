<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HI ${user.userName} </title>
</head>
<body>
HI! UserName :
<p>
 ${user.userName} 
</p>
<p>
選單
</p>
	<br>
    	<input type="button" value="供货商会员审核" onclick="window.location.href='<%=path %>/user/Audit'">
    </br>
    	<input type="button" value="供货商账号维护" onclick="window.location.href='<%=path %>/user/Maintain'">
</body>
</html>