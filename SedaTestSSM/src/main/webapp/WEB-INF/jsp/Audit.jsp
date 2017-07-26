<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<c:set value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>供货商会员审核</title>   
<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
   -->
</head>
<base href="<%=basePath%>">
<body>
廠商資料
<table>
    	<thead>
    		<tr>
    			<th>編號</th>
    			<th>统一社会信用代码</th>
    			<th>公司中文名称</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach items="${addcompany}" var="company" varStatus="status">
    			<tr>
    				<td>${company.id }</td>
    				<td>${company.companyId }</td>
    				<td>${company.companyCname}</td>
    				<td>
    					<a href="<%=path %>/user/showCompany?id=${company.id }">檢視</a>
    				</td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table>
</body>
</html>