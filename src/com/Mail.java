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
 * Servlet implementation class Mail
 */
@WebServlet("/Mail")
public class Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con; 
	Statement stm1;
	PreparedStatement ps;
	ResultSet rs ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
			String msg =request.getParameter("msg");
			String name =request.getParameter("name");
			String sub =request.getParameter("sub");
			String id =request.getParameter("id");
			String emails =request.getParameter("emails");
			try
			{
				Class.forName("com.mysql.jdbc.Driver");//Loading the driver
				

				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root" , "");//Establishing the connection
				                 
				System.out.println("connetion Established");
				ps = con.prepareStatement("INSERT INTO view(`visitor_name`,`subject`,`body`,`mail_id`,`t_mail`) values(?,?,?,?,?)");
				ps.setString(1,name);
				ps.setString(2,sub);
				ps.setString(3,msg);
				ps.setString(4,id);
				ps.setString(5,emails);
				int y=ps.executeUpdate();
				
				
				
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
