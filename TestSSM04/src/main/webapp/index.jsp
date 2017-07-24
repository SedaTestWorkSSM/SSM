<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<title>TestSSM Login</title>
<h2>Hello World!</h2>
	<form action="<%=path %>/user/login" method="post">
		<table>
    		<tr>
    			<td>帳號</td>
    			<td><input type="text" name="userName"></td>
    		</tr>
    		<tr>
    			<td>密碼</td>
    			<td><input type="password" name="password"></td>
    		</tr>
    		<tr>
    			<td><input type="submit" value="登入" ></td>
    		</tr>
    	</table>
    </form>
</body>
</html>
