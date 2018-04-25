
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
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		String name =request.getParameter("name");
		String password =request.getParameter("password");
		String email =request.getParameter("email");
		String repassword =request.getParameter("repassword");
		String qualification =request.getParameter("qualification");
		String contact =request.getParameter("contact");
		String college =request.getParameter("college");
		String address =request.getParameter("address");
		String tot =request.getParameter("Type of Training");
		String ref =request.getParameter("Reference");
		response.getWriter().print("valid user");
		try
		{
			Class.forName("com.mysql.jdbc.Driver");//Loading the driver
			

			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root" , "");//Establishing the connection
			                 
			System.out.println("connetion Established");

			Statement stm1=con.createStatement();//creating the statement

			//ResultSet rs=stm1.executeQuery("select * from user");//executing the query
		  // int x=stm1.executeUpdate("insert into `user`(`name`, `id`) values ('hima','53')");
			PreparedStatement ps=con.prepareStatement("INSERT INTO registeration(`name`, `contact`, `qualification`, `college`, `address`, `email`, `Type of Training`, `Reference`, `password`, `repassword`) VALUES (?,?,?,?,?,?,?,?,?,?)");
		    ps.setString(1,name);
			ps.setString(2,contact);
			ps.setString(3,qualification);
			ps.setString(4,college);
			ps.setString(5,address);
			ps.setString(6,email);
			ps.setString(7,tot);
			ps.setString(8,ref);
			ps.setString(9,password);
			ps.setString(10,repassword);
			int y=ps.executeUpdate();
			PrintWriter out =response.getWriter();
			//while(((ResultSet) ps).next())//if it select a record.
			
				HttpSession ses=request.getSession(true);
				ses.setAttribute("ID", name);
				out.println("<h1>Hello</h1>");
				out.println(request.getParameter("username"));
			RequestDispatcher rd =request.getRequestDispatcher("home.html");
			rd.include(request,response);
			response.getWriter().print("Valid");
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
