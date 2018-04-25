<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload</title>
</head>
<jsp:include page="header.jsp" />
<body bgcolor= "00CCCC">
<div align="center" style="width=70%;">
 <div style="width=70%;float:center;">
  <p><b><h1> Uploading Files</h1></b></p>
    <p><form action="Upload" enctype="multipart/form-data" method="post"><p>
   
          <br>
          &nbsp;&nbsp;&nbsp;&nbsp;<br><input type="file" name="file" width="100"/></br>
         <br>
         <p><input type="submit" name="upload" value="submit" class="button" /></p>
    	 <br>
    	 
          </form>
          
     
   </div>
        <form>
    <input type="submit" name="show_table" value="show_table" class="button"  />
  
    </form>
        
            
  <% 
  if(request.getParameter("show_table")!=null)
   {
   %>
   
   <div style="width=70%;float:center;">
          
      
           <%!String search;
	String val;
	private Connection connection;
      //private PreparedStatement preparedStatement;
      private ResultSet resultSet;
      private PreparedStatement statement;%>
      <table border="5" style="width:70%">
  		<H1>
       Files Uploaded
      </H1>  
      <tr align="left">
        <th> file details :</th>
        <th> date :</th>
      </tr>
        <%
          try {
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
            System.out.println("connection established");
            statement=connection.prepareStatement("SELECT * FROM upload");
            resultSet=statement.executeQuery();
            while(resultSet.next()){ %>
      <tr>
        <td><%=resultSet.getString(1)%></td>
        <td><%=resultSet.getString(2)%></td>
      </tr>
      <%  }
       }
        
        catch (Exception e)
        {
    	  e.printStackTrace();
    	  } %>
    </table>
    </div>
<%} %>
</div>

</body>
</html>