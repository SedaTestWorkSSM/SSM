<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body >
<title>SedaTestSSM Login</title>
<h1 align="center" >平台管理登入</h1>
<center><a href="http://www.scmplus.com.cn/">金易达官网</a></center>


	<form action="<%=path %>/user/login" method="post">
		
	
		<center><table>
		
		<img src="http://duoyun-imgs.oss-cn-hangzhou.aliyuncs.com/gs/pdc/job/img/fd/1b/fd1ba155d9ca41d682e69af1fa02c168.jpg"width="200" height="200">
		


		</table></center>

		
		<center><table>

    		<tr>
    			 帳號 : <input type="text" name="userName" >
    		</tr>
    		<br/>
    		<tr>
    			密碼 : <input type="password" name="password" >   		
    		</tr>
    		<br/>
    		<tr>
    			<input type="submit"  style="color:white;background-color:red;width:100px;height:30px;font:bold;text-align:center"  value="登入" >
    			<input type="submit"  style="color:white;background-color:red;width:100px;height:30px;font:bold;text-align:center"  value="清空" >
    		</tr>
    	</table> </center>
    </form>
</body>
</html>