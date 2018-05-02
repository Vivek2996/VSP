<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Mail History</title>
</head>
<jsp:include page="header.jsp" />
<%!String us; %>
<%us=request.getParameter("username");
System.out.println(us);%>
<%if(us!=null)
	{%>

<body bgcolor= "00CCCC">
<p><b><h1> View Mail History</h1></b></p>

<div style="width=50%;float:center;">
        <form align:center>
         <form action="viewmail.jsp">
   <input type="hidden" name="abc" value="<%=us%>"/>
   
    <input type="submit" name="show_table" value="show_table" class="button" style="height: 50px; width: 100px;background-color:#97cfc3" />
  
    </form>
 <%} %>
 
  <% 
  
  if(request.getParameter("show_table")!=null)
   {
	  us=request.getParameter("abc");
	  System.out.println(us);
   %>
   
   <div style="width=80%;float:center;">
          
      
           <%!String search;
	String val;
	private Connection connection;
      //private PreparedStatement preparedStatement;
      private ResultSet resultSet;
      private PreparedStatement statement;%>
      <table border="5" style="width:100%">
  		<H1>Chat History</H1>  
      <tr align="left">
        <th> Visitor name :</th>
        <th> Subject :</th>
        <th> Query :</th>
        <th> Student mail_id :</th>
        <th> Teacher mail_id :</th>
        <th> Reply :</th>
      </tr>
        <%
          try {
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","");
            System.out.println("connection established");
            statement=connection.prepareStatement("SELECT * FROM view");
            resultSet=statement.executeQuery();
            while(resultSet.next()){ %>
      <tr>
        <td><%=resultSet.getString(1)%></td>
        <td><%=resultSet.getString(2)%></td>
        <td><%=resultSet.getString(3)%></td>
        <td><%=resultSet.getString(4)%></td>
        <td><%=resultSet.getString(5)%></td>
        <td><form action="Chatbox.jsp" method="get"><input type="hidden" name="abc" value="<%=us%>"/><input type="submit" name="reply" value="reply" class="button"/><%=resultSet.getString(6)%></form></td>
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