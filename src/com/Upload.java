package com;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.jdbc.Connection;

import java.sql.*;
import java.util.ArrayList;

@WebServlet("/Upload")
@MultipartConfig(fileSizeThreshold=1024*1024*2,maxFileSize=1024*1024*5)
public class Upload extends HttpServlet {
	private static final String SAVE_DIR="uploaded";
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		 String savePath = "G:" + File.separator + SAVE_DIR;
         File fileSaveDir=new File(savePath);
         if(!fileSaveDir.exists()){
             fileSaveDir.mkdir();
         }
	   
		//String first = request.getParameter("reg3");
	    Part file = request.getPart("file");
	    
	    String fileName=extractfilename(file);
	    file.write(savePath + File.separator + fileName);
	    String filePath= savePath + File.separator + fileName ;
	    
	    
	    try {
	    	
	    	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root",""); 
		    PreparedStatement ps= con.prepareStatement("insert into upload values (?,now())");
		   
		   // ps.setString(1,first);
		    ps.setString(1,filePath);
		    
		    int i=ps.executeUpdate();
		    if(i>0)
		    {
		    	out.print("<h1>file uploaded successfully</h1>");
		    	response.sendRedirect("upload.jsp");
		    }
		    con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}  
		}

	 private String extractfilename(Part file) {
        String cd = file.getHeader("content-disposition");
        String[] items = cd.split(";");
        for (String string : items) {
            if (string.trim().startsWith("filename")) {
                return string.substring(string.indexOf("=") + 2, string.length()-1);
            }
        }
        return "";
    }
		
	}