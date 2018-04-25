package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String username =request.getParameter("username");
		String password =request.getParameter("pass");
		response.setContentType("text/html;charset=UTF-8");
		//response.getWriter().print("valid user");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");//Loading the driver

			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root" , "");//Establishing the connection
			                 
			System.out.println("connetion Established");

			Statement stm1=con.createStatement();//creating the statement
		  // int x=stm1.executeUpdate("insert into `user`(`name`, `id`) values ('hima','53')");
		    PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=?");
		    ps.setString(1,username);
		    ps.setString(2,password);
			ResultSet rs=ps.executeQuery();       //executing the query
			PrintWriter out =response.getWriter();
			//RequestDispatcher rd =request.getRequestDispatcher("");
			if(rs.next())//if it select a record.
			{
				HttpSession ses=request.getSession(true);
				ses.setAttribute("ID", username);
				out.println("<h1>Hello</h1>");
				out.println(request.getParameter("username"));
			RequestDispatcher rd =request.getRequestDispatcher("home.html");
			rd.forward(request,response);
			
				//response.getWriter().print("Valid user");
				//response.sendRedirect("indexsignup.html");
			} 
			else
				
			{
				response.getWriter().print("    InCorrect USERNAME or PASSWORD");
				//out.println("<a href='index.html? x="+username+"'>Go To HomepaGe</a>");
				
				RequestDispatcher rd =request.getRequestDispatcher("index.html");
				rd.include(request,response);
			}
			
			// ResultSet rs=stm1.executeQuery("select * from user");
			}
			catch(Exception e)
		
			{
			   e.printStackTrace();
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
