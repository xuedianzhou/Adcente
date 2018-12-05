package com.controller.zxd;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;








import com.entity.Users;
import com.entity.profit;
import com.service.zxd.xlsxService;

@Controller
public class xlsxController {

	  @Resource
	  xlsxService xser;
	  
	  @RequestMapping("userxlsx")
	  public String userxlsx(HttpServletResponse response) throws IOException{
		  HSSFWorkbook workbook = new HSSFWorkbook();
	        HSSFSheet sheet = workbook.createSheet("user");

	        List<Users> list =xser.userxlsx();
	        String fileName = "用户"  + ".xls";//设置要导出的文件的名字
	        //新增数据行，并且设置单元格数据

	        int rowNum = 1;

	        String[] headers = { "id", "姓名", "电话号码","状态","注册时间","身份证号"};
	        //headers表示excel表中第一行的表头

	        HSSFRow row = sheet.createRow(0);
	        //在excel表中添加表头

	        for(int i=0;i<headers.length;i++){
	            HSSFCell cell = row.createCell(i);
	            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
	            cell.setCellValue(text);
	        }
             
	        
	         
	        //在表中存放查询到的数据放入对应的列
	        for (Users u : list) {
	            HSSFRow row1 = sheet.createRow(rowNum);
	            row1.createCell(0).setCellValue(u.getUid());
	            row1.createCell(1).setCellValue(u.getUname());
	            row1.createCell(2).setCellValue(u.getPhone());
	            row1.createCell(3).setCellValue(u.getUptime().toLocaleString());
	            row1.createCell(4).setCellValue(u.getProof());
	            System.out.println(u.getUptime());
	            rowNum++;
	        }
            
	        response.setContentType("application/octet-stream");
	        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
	        response.flushBuffer();
	        workbook.write(response.getOutputStream());
	    	return "1";
			
			
		}
		
	    
	    @RequestMapping("profitxlsx")
		public String profitxlsx(HttpServletResponse response) throws IOException{
	    	  HSSFWorkbook workbook = new HSSFWorkbook();
		        HSSFSheet sheet = workbook.createSheet("user");

		        List<profit> list =xser.profitxlsx();
		        String fileName = "用户"  + ".xls";//设置要导出的文件的名字
		        //新增数据行，并且设置单元格数据

		        int rowNum = 1;

		        String[] headers = { "id" , "交易金额","收益金额","状态","时间","交易人"};
		        //headers表示excel表中第一行的表头

		        HSSFRow row = sheet.createRow(0);
		        //在excel表中添加表头

		        for(int i=0;i<headers.length;i++){
		            HSSFCell cell = row.createCell(i);
		            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
		            cell.setCellValue(text);
		        }
	             
		        
		         
		        //在表中存放查询到的数据放入对应的列
		        for (profit p : list) {
		            HSSFRow row1 = sheet.createRow(rowNum);
		            row1.createCell(0).setCellValue(p.getPid());
		            row1.createCell(1).setCellValue(p.getSmoney());
		            row1.createCell(2).setCellValue(p.getMoney());
		            row1.createCell(3).setCellValue(p.getTest());
		            row1.createCell(4).setCellValue(p.getPtime().toLocaleString());
		            row1.createCell(5).setCellValue(p.getUname());
		            rowNum++;
		        }
	            
		        response.setContentType("application/octet-stream");
		        response.setHeader("Content-disposition", "attachment;filename=" + fileName);
		        response.flushBuffer();
		        workbook.write(response.getOutputStream());
		    	return "1";
				
			
		}
		
		
		
}
