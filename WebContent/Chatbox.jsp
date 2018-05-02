<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<%!String us; %>
<%us=request.getParameter("abc");
System.out.println(us);%>
<%if(us!=null)
	{%>

<body>
<p><b><h1> Reply box:</h1></b></p>
<%! String emails;

Connection con; 
Statement stm1;
PreparedStatement ps;
ResultSet rs ; %>
		<form action="Chatbox.jsp">
		<input type="text" name="name" placeholder="Enter visitor name......">
			<input type="submit" name="search" value="search"> <br>
			</form>
			<%} %>
			
		<%
		String ss =request.getParameter("search");
		if((ss)!=null)
		{
		String name=request.getParameter("name");
		System.out.println("*********"+name);
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
	
			PreparedStatement st=con1.prepareStatement("SELECT mail_id FROM view where visitor_name=?");
			
			st.setString(1,name);
			
			ResultSet rs1=st.executeQuery();
			
			
			while(rs1.next()){
			 
			emails=rs1.getString("mail_id");
			System.out.println(emails);
            	}
	
		}
		
		catch(Exception e)
		{
			e.getMessage();
			}
		
		%>
		
		<form action="Send">
		<div>
		<br>
		To:
		<input type="text" name="emails" value="<%=emails%>">
		<br>
		</div>
		
		<div>
		<br>
		From:
		<input type="text" name="from" value="Admin">
		<br>
		</div>
		
		<div>
		<br>
		Subject:
		<input type="text" name="sub" value="Reply to your query">
		<br>
		</div>
		
		<div>
		<br>
		Reply:
		<br>
		<textarea rows="20" cols="180" name="msg" placeholder="Enter your message here......"></textarea>
		<br>
		</div>
		
		<div>
		<br>
		<input type="submit" name="Send" value="send"> <br>
		</div>
		</form>
		<%} %>
		
</body>
</html>