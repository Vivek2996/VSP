package com;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Send
 */
@WebServlet("/Send")
public class Send extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String emails;

	Connection con; 
	Statement stm1;
	PreparedStatement ps;
	ResultSet rs ; 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Send() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		if((request.getParameter("Send"))!=null)
		{
		String msg =request.getParameter("msg");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");//Loading the driver
			

			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root" , "");//Establishing the connection
			                 
			System.out.println("connetion Established");
			PreparedStatement ps=con.prepareStatement("update view set reply=? where mail_id=?");
		    ps.setString(1,msg);
			ps.setString(2,request.getParameter("emails"));
			int y=ps.executeUpdate();
			if(y==1) {
				request.getRequestDispatcher("Chatbox.jsp").forward(request,response);
			}
			}
			catch(Exception e)
		
			{
			   e.printStackTrace();
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
