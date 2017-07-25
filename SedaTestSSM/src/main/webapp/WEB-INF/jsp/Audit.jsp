<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>供货商会员审核</title>
</head>
<body>
            <c:forEach items="${company}" var="item" varStatus="status">
                     <tr>
                     <td>${item.id}</td>
                     <td>${item.userId}</td>
                     <td>${item.userName}</td>
                     <td>${item.userPhone}</td>
                     <td>${item.userFax}</td>
                     <td>${item.userD}</td>
                     <td>${item.userP}</td>
                     <td>${item.userEmail}</td>
                     <td>${item.companyId}</td>
                     <td>${item.companyAname}</td>
                     <td>${item.companyCname}</td>
                     <td>${item.companyEname}</td>
                     <td>${item.companyRname}</td>
                     <td>${item.companyDate}</td>
                     <td>${item.companyE}</td>
                     <td>${item.companyC}</td>
                     <td>${item.companyPhone}</td>
                     <td>${item.companyFax}</td>
                     <td>${item.companyTxt}</td>
                     <td>${item.companyStxt}</td>
                     <td>${item.companyLadd}</td>
                     <td>${item.companyadd}</td>
                     <td>${item.companyArea}</td>
                     <td>${item.companyType}</td>                                
                     </tr>                
            </c:forEach>
</body>
</html>