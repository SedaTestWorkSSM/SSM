<%@ page language="java" pageEncoding="UTF-8"%>   
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
<title>Insert title here</title>
</head>
<body>
<%
	String conn_str =
	"jdbc:mysql://127.0.0.1:3306/testssm";
	String user = "root";
	String password = "123456";
	//String sql_str="insert into t_book values('3')";
	//String sql_str1="insert into t_book values('5')";
	 Connection conn = null;
	 try {
	   Class.forName("com.mysql.jdbc.Driver");
	   //out.println("JDBC Driver 載入成功"+"<br>");    
	 }
	 catch(ClassNotFoundException ex) {
	   out.println("JDBC Driver 載入失敗01");
	   out.println(ex.getLocalizedMessage());
	 }
	 try{
		  //conn=DriverManager.getConnection(conn_str,user,password);
		  conn=DriverManager.getConnection(conn_str, user, password);
	 //out.println("DriverManager 載入成功");
	 }
	 catch(Exception ex){
		  out.println(ex.getMessage());
	 }
	 finally{
		  //conn.close();
		 // out.println("server 關閉");
	 }
	 Statement stmt=null;
	 try{
		  stmt=conn.createStatement(); 
		  //out.println("createStatement 載入成功");
		 // int result=stmt.executeUpdate(sql_str);
		   //stmt.executeUpdate(sql_str1);
		  //out.println("executeUpdate 載入成功");
	 }
	 catch(Exception ex){
		  out.println(ex.getMessage());
	 }
	 
	 String sql="SELECT * FROM testssm.company"; 
	 ResultSet rs = stmt.executeQuery(sql);
	 
	 String[] sql_str = new String[25];
	 while(rs.next())
	 { 
		 for(int x=1;x<25;x++){
			 //out.println(rs.getString(x));
			 sql_str[x-1]=rs.getString(x);
			 out.println(" ");
		 }
		 
		 for(int x=0;x<sql_str.length-1;x++){
			 out.println(sql_str[x]);
		 }
	 }

   	 OutputStream os = response.getOutputStream(); // 取得输出流
	 response.reset();// 清空输出流
	
	 //不能用用中文设置 filename，会出错
	 response.setHeader("Content-disposition", "attachment; filename=CompanyExcel.xls");// 设定输出文件头
	 response.setContentType("application/msexcel");// 定义输出类型
	 
	 ExcelUtil dccExp=null;
	 try{
		 //a01 a = new a01();
		 //a.print();
		  dccExp = new ExcelUtil();
			dccExp.createXls(os , sql_str);
		 //dccExp.print();
	 
	 }
	
	 catch(Exception e){
		 e.getMessage();
		 System.out.println("---出现异常---");  
	 }
 
%>
</form>
</body>
</html>