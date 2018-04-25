<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
     
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<jsp:include page="header.jsp" />
<script type="text/javascript">
function showAlert() 
{
	alert("Mail has been sent Successfully");
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reply_Back</title>
<style type="text/css">
	.boxed {
  border: 1px solid green ;
}
	</style>
</head>


<body>
<h2> Reply to mail</h2>
<form action="replymail.jsp"></form>

<form action="mail_replier.jsp">
		<div>
		<br>
		<b>To:</b>
		<input type="text" name="emails" value=" ">
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
		<textarea  rows="15" cols="100" name="msg" placeholder="Enter your message here......"></textarea>
		<br>
		</div>
		
		<div>
		<br><br>
		<input type="submit" name="Send" value="send" onclick="showAlert()"> 
		
		<br>
		</div>
		</form>
		

</body>
</html>