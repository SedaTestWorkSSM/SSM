package com.SedaTestSSM.util;

import java.io.OutputStream;      
import jxl.*;         
import jxl.write.Label;      
import jxl.write.WritableSheet;      
import jxl.write.WritableWorkbook;     

public class ExcelUtil {

	
	
	public void createXls(OutputStream os , String[] sql_str  ) {
	     // 准备设置excel工作表的标题      
	     String[] title = 
	    	 {"ID","管理者账号","姓名","电话","传真","部门名称","职称","电子邮件","统一社会信用代码","公司简称","公司中文名称","公司英文名称","公司负责人","创立日期","公司员工人数","资本额","公司电话","公司传真","公司简介","公司实绩","登记地址","通讯地址","供应地区","行业别"};
	    try {      
	        // 获得开始时间      
	        long start = System.currentTimeMillis();      
	        // 输出的excel的路径      
	             //String filePath = "C://Users//LiuXin//Desktop//test//test.xls.xls";      
	        // 创建Excel工作薄      
	         WritableWorkbook wwb;      
	        // 新建立一个jxl文件,即在C盘下生成test.xls      
	           //OutputStream os = new FileOutputStream(filePath);      
	         wwb=Workbook.createWorkbook(os);      
	        // 添加第一个工作表并设置第一个Sheet的名字      
	         WritableSheet sheet = wwb.createSheet("产品清单", 0);      
	         Label label;      
	        for(int i=0;i<title.length;i++){      
	            // Label(x,y,z)其中x代表单元格的第x+1列，第y+1行, 单元格的内容是y      
	            // 在Label对象的子对象中指明单元格的位置和内容      
	             label = new Label(i,0,title[i]);
	          
	            // 将定义好的单元格添加到工作表中      
	             sheet.addCell(label);  
	             
	             label = new Label(i,1,sql_str[i]);
	             sheet.addCell(label);
	         }  
	        
	 
	              
	        // 写入数据      
	         wwb.write();      
	        // 关闭文件      
	         wwb.close();      
	        long end = System.currentTimeMillis();      
	         System.out.println("----完成该操作共用的时间是:"+(end-start)/1000);      
	     } catch (Exception e) {      
	         System.out.println("---出现异常---");      
	         e.printStackTrace();      
	     }    
	 }
	 
	 /**
	  * @param args
	  */
	 public static void main(String[] args) {
	  // TODO Auto-generated method stub
		 //DataCollectCorrectExp da = new DataCollectCorrectExp();
		 //da.createXls();

	 }

}
