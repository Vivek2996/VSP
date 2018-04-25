<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Test</title>
</head>
<body>
<jsp:include page="headd.jsp" />
<%!Connection con; 
Statement stm1;
PreparedStatement ps;
ResultSet rs ; 
int count;
String sel;
int marks=0;
int wrong=0;%>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");//Loading the driver

	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/data", "root" , "");//Establishing the connection
	                 
	System.out.println("connetion Established");
	ps = con.prepareStatement("SELECT * FROM quiz");
	rs=ps.executeQuery();
	count=1;
	while(rs.next())//processing the results
		
	{
	   //System.out.println(rs.getString("question"));
	    sel="que";
        sel=sel+String.valueOf(count);
		%><FORM action="To.jsp" method="POST">
		
		
   
            <b><%=rs.getString(1)%></b><br><br>
           
           <input type="radio" name="<%=sel%>" value="<%=rs.getString(2)%>"><%=rs.getString(2)%><br>
           <input type="radio" name="<%=sel%>" value="<%=rs.getString(3)%>"><%=rs.getString(3)%><br><br>
 <% 
count ++;
}


}
catch(Exception e)

{
   e.printStackTrace();
}


%><br>
          <input type="submit" name="ok" VALUE="Submit Answer">
            
</FORM>            

<% 
	if(request.getParameter("ok")!=null)
	{
		Statement st = con.createStatement();
		int t=st.executeUpdate("delete from checkans");
		
		
		
		rs.first();
		
		try
		{
	for(int i=1;i<=count;i++)
	{
		String b=String.valueOf(i);
		  String option=request.getParameter("que"+b);
		String id =rs.getString(5);
		String correct =rs.getString(4);
		System.out.println(option);
		System.out.println(id);
		
			ps = con.prepareStatement("INSERT INTO checkans VALUES(?,?,?)");
			ps.setString(1,id);
			ps.setString(2,option);
			ps.setString(3,correct);
			int y=ps.executeUpdate();
		rs.next();
	}
	}

	catch(Exception e)

	{
	  e.printStackTrace();
	}
}
%>

<% 
	if(request.getParameter("ok")!=null)
	{
		
		try
		{
			Statement st = con.createStatement();
			ResultSet rs=st.executeQuery("select * from checkans");
			while(rs.next())
			{System.out.println(rs.getString(2)+"****"+rs.getString(3));
				if(rs.getString(2).equals(rs.getString(3)))
						{
					marks=marks+5;
						}
				else
				{
					wrong++;
				}
			}
	}

	catch(Exception e)

	{
	  // e.printStackTrace();
	}%>
		  <div class="box1">
   	   <b><h1><% out.println("Marks="+marks);%><br><br>
   	   <% out.println("Wrong Questions="+wrong);%><br><br>
   	  <br><br><br>
   	  <%
}
%>



</body>
</html>