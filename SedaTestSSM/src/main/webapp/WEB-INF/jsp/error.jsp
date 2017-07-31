<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
 
 
setTimeout("javascript:location.href='http://localhost:8080/SedaTestSSM'", 1000);
</script>
<title>錯誤</title>
</head>
<body>
<div align="center">
    <br/>
    <br/>
    <br/>
    <h4>密碼錯誤,無法登入!</h4>
    <h4><a href="/SedaTestSSM" >立即轉跳</a></h4>
</div>
</body>
</html>