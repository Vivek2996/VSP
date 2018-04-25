package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Java
 */
@WebServlet("/Java")
public class Java extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Java() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//String filename="index.pdf";
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
         /*String filename = "A.java";
          String filepath = "E:\\"; */
          response.setContentType("APPLICATION/pdf");
         // response.setHeader("Content-Disposition","inline; filename=\"" + filename + "\"");

        //  java.io.FileInputStream fileInputStream = new java.io.FileInputStream(filepath + filename);
          java.io.FileInputStream fileInputStream = new java.io.FileInputStream("G:\\save\\Java_coursecontent.pdf");
          int i;
          while ((i=fileInputStream.read()) != -1) {
            out.write(i);
          }
          fileInputStream.close();
          out.close(); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
