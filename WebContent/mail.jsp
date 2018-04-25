<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script type="text/javascript">
function showAlert() 
{
	alert("Mail has been sent Successfully");
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Notice</title>
	<style type="text/css">
	.boxed {
  border: 1px solid green ;
}
	</style>
</head>
<body>
<jsp:include page="headd.jsp" />
<form action="mail.jsp">


<p><b>Select the Category</b></p>  
	<select  name="Categories" onchange="this.form.submit()">
	<option value="select">Select Category</option>
	<option value="course">Course</option>
	</select>
	</form>
	<%String search=request.getParameter("Categories");
	
	
	String SubCategory="";
	if(search!=null)
		{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
			//out.println("connection done");
			Statement ps=con.createStatement();
			
			//ps.setString(1 , search);
			ResultSet rs=ps.executeQuery("SELECT "+ search+" FROM cat");
			%><form>
			<select name="SubCategories" onchange="this.form.submit()"><%
			if(rs!=null){
				%>
				
				<option value="Select SubCategory">Select SubCategory</option><%
			while(rs.next()) 
			{//System.out.println(rs.getString(1));
			
			%>
			<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
			<%
				}
						}%>
						</select>
						<input type="hidden" name="search" value="<%=search%>"/>
						
		</form>
		
		<%}
		catch(Exception e){
			e.getMessage();
		}
		}
		String sub=request.getParameter("SubCategories");
		if(sub!=null)
		{
			String sear=request.getParameter("search");
			String emails="";
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
	System.out.println(sear+" "+sub);
			PreparedStatement st=con1.prepareStatement("SELECT "+sub+" FROM emailteach");
					ResultSet rs1=st.executeQuery();
		
			while(rs1.next()){
			 
			emails+=rs1.getString(1)+";";
            }
	
		}
		catch(Exception e)
		{ 
			System.out.println(e.getMessage());
		}
		
		
			%>
		<form action="Mail">
		<div>
		<br>
		<b>To:</b>
		<input type="text" name="emails" value="<%=emails%>">
		<br>
		</div>
		
		<div>
		<br>
		<b>Name:</b>
		<input type="text" name="name">
		<br>
		</div>
		
		<div>
		<br>
		<b>Email:</b>
		<input type="text" name="id">
		<br>
		</div>
		
		<div>
		<br>
		<b>Subject:</b>
		<input type="text" name="sub">
		</div>
		<br>
		
		<div>
		<b>Body:</b>
		<br>
		<textarea  rows="8" cols="100" name="msg" placeholder="Enter your message here......"></textarea>
		<br>
		</div>
		
		<div>
		<br><br>
		<input type="submit" name="Send" value="send"> 
		
		<br>
		</div>
		</form>
		<%} %>
</body>
</html>