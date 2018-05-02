<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending Mail</title>
</head>
<body>
<jsp:include page="headd.jsp" />
<%String username;

String se=request.getParameter("username");
System.out.println(se);%>
<%if(se!=null)
	{%>

<form action="dem.jsp">
Select the Category  
	<select name="Categories">
	<option >Select Category</option>
	<option value="type">Type</option>
	<option value="course">Course</option>
	<option value="details">Details</option>
	<option value="profession">Profession</option>
	</select>
	<input type="submit" name="submit" value="Category"/>
	</form>
	 <%} %>
	<%!String search;
	String val;
	private Connection connection;
      //private PreparedStatement preparedStatement;
      private ResultSet resultSet;
      private PreparedStatement statement;%>
	<%
search=request.getParameter("Categories");
	if(search!=null)
		{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
			//out.println("connection done");
			Statement ps=con.createStatement();
			
			//ps.setString(1 , search);
			ResultSet rs=ps.executeQuery("SELECT DISTINCT "+ search+" FROM category");
			if(rs!=null){
				%>
<form action="dem.jsp">
				<select name="SubCategories">
				<% 
			}
		
			while(rs.next()) 
			{System.out.println(rs.getString(1));
			
			%>
	
			<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
		
			<%
				}
			}
				
		catch(Exception e){
			e.getMessage();
		}
		}
	%>
	</select>
	<input type="hidden" name="form3" value="<%=search%>"/>
<input type="submit" name="submit1" value="Go"/>
</form>
<%
      if(request.getParameter("submit1")!=null)
      {
         val=request.getParameter("SubCategories");
         String s=request.getParameter("form3");
    System.out.println(s);
    
    %>


    <table border="5" style="width:100%">
    
      <tr align="left">
        <th> type :</th>
        <th> course :</th>
        <th> details :</th>
        <th> profession :</th>
      </tr>
        <%
          try {
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
            System.out.println("connection established");
            statement=connection.prepareStatement("SELECT * FROM category where "+ s+"=?");
            statement.setString(1,val);
            resultSet=statement.executeQuery();
            while(resultSet.next()){ %>
      <tr>
        <td><%=resultSet.getString(1)%></td>
        <td><%=resultSet.getString(2)%></td>
        <td><a href="SyllabusIndex.jsp"><%=resultSet.getString(3)%></a></td>
        <td><%=resultSet.getString(4)%></td>
      </tr>
      <%  }}catch (Exception e){e.printStackTrace();} %>
    </table>
       <!--  <h1><%=request.getParameter("SubCategories")%></h1>-->
  <%
    }
  %>
 
</body>
</html>