<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>   
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    <%@page import="java.io.OutputStream"%>
    <%@page import="com.SedaTestSSM.util.*"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>showCompany</title>
</head>
<body>

<table>
    	<thead>
    		<tr>
    			<th>管理者账号</th>
    			<th>姓名</th>
    			<th>电话</th>
    			<th>传真</th>
    			<th>部门名称</th>
    			<th>职称</th>
    			<th>电子邮件</th>
    			<th>统一社会信用代码</th>
    			<th>公司简称</th>
    			<th>公司中文名称</th>
    			<th>公司英文名称</th>
    			<th>公司负责人</th>
    			<th>创立日期</th>
    			<th>公司员工人数</th>
    			<th>资本额</th>
    			<th>公司电话</th>
    			<th>公司传真</th>
    			<th>公司简介</th>
    			<th>公司实绩</th>
    			<th>登记地址</th>
    			<th>通讯地址</th>
    			<th>供应地区</th>
    			<th>行业别</th>
    		</tr>
    	</thead>
    	<tbody>
    			<tr>
					<td>${showCompany.userId }</td>
					<td>${showCompany.userName}</td>
					<td>${showCompany.userPhone}</td>
					<td>${showCompany.userFax}</td>
					<td>${showCompany.userD}</td>
					<td>${showCompany.userP}</td>
					<td>${showCompany.userEmail}</td>
					<td>${showCompany.companyId}</td>
					<td>${showCompany.companyAname}</td>
					<td>${showCompany.companyCname}</td>
					<td>${showCompany.companyEname}</td>
					<td>${showCompany.companyRname}</td>
					<td>${showCompany.companyDate}</td>
					<td>${showCompany.companyE}</td>
					<td>${showCompany.companyC}</td>
					<td>${showCompany.companyPhone}</td>
					<td>${showCompany.companyFax}</td>
					<td>${showCompany.companyTxt}</td>
					<td>${showCompany.companyStxt}</td>
					<td>${showCompany.companyLadd}</td>
					<td>${showCompany.companyAdd}</td>
					<td>${showCompany.companyArea}</td>
					<td>${showCompany.companyType}</td> 
    			</tr>
    	</tbody>
    </table>

	    <input type="button" value="匯出Excel" onclick="window.location.href='<%=path %>/user/ExcelUtil'">

</body>
</html>