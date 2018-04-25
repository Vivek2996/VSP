<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Placement_Analysis</title>
</head>
<body>

<jsp:include page="header.jsp" />
<section>
    <%!
      private Connection connection;
      //private PreparedStatement preparedStatement;
      private ResultSet resultSet;
      private PreparedStatement ps;
    String val;
    %>
  <form action="place.jsp">
     
      <div align="center" style="width=70%;">
 <div style="width=30%;float:center;">
      
     <h2><b>Placement Analysis  </b></h2> 
	<select name="Categories">
	<option >Select Category</option>
	<option value="yes">YES</option>
	<option value="no">NO</option>
	
		</select>
	<input type="submit" name="submit" value="Go.."/>
	</form>
	</div>
	
	
	
		<p><br><table border="5" style="width:80%"><br></p>
		<div style="width=30%;float:center;">
	<%!String search;%>
	<tr align="center">
        <th> Visitor_name :</th>
        <th> Contact:</th>
        <th> College:</th>
        <th> Mail_id:</th>
        <th> Placement_Analaysis:</th>
      </tr>
	<%
	search=request.getParameter("Categories");
	System.out.println(search);
	if(search!=null)
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","");
			//out.println("connection done");
			
			
			//ps.setString(1 , search);
			PreparedStatement ps=con.prepareStatement("Select * from registeration where PlacementAnalysis=?");
			ps.setString(1, search);
	
			ResultSet resultSet=ps.executeQuery();
			while(resultSet.next()){
	%>
	
	<tr align="center">
	<td><%=resultSet.getString(1) %></td>
	<td><%=resultSet.getString(2) %></td>
	<td><%=resultSet.getString(4) %></td>
	<td><%=resultSet.getString(6) %></td>
	<td><%=resultSet.getString(8) %></td>
	
	</tr>
	<%
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	else
	{
		out.println(" ");
	}
	%>
	</table>
 
</section>
</body>
</html>