<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sending_email</title>
<%@page import="java.util.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page import="javax.activation.*" %>
<%@page import="java.sql.*" %>    
</head>
<body>
<%!String to1; %>

<%
    String to="";
String user="b.18.java.01.02@gmail.com";//sender's id
String pass="BTES123#";//sender's password
String host = "smtp.gmail.com";
String from = "b.18.java.01.02@gmail.com";//sender's email
String subject = request.getAttribute("sub").toString();
String messageText =request.getAttribute("msg").toString();
to1 = request.getAttribute("emails").toString();//receiver's id
    int j=0;
    System.out.println(to1);
    System.out.println(subject);
    System.out.println(messageText);     
    System.out.println(from);
/*for(int i=0;i<to1.length();i++){
    if(to1.charAt(i)==';')
    {
        
        to=to1.substring(j,i);
        System.out.println(to);
        
        j=i+1;
   */
boolean sessionDebug = false;
String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
// Create some properties and get the default Session.
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props);
 
// Set debug on the Session
// Passing false will not echo debug info, and passing True will.
 
mailSession.setDebug(sessionDebug);
 
// Instantiate a new MimeMessage and fill it with the
// required information.
 
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to1)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setSentDate(new java.util.Date());
msg.setText(messageText);
 
// Hand the message to the default transport service
// for delivery.
Transport transport = mailSession.getTransport("smtp");
//Transport.send(msg);
transport.connect(host, user, pass);
try
{
transport.sendMessage(msg, msg.getAllRecipients());
out.println("Mail was sent to " + to1);
out.println(" from " + from);
out.println(" using host " + host + ".");
}
catch(Exception e)
{
    out.println(e);
}
    //}
    
//}
response.sendRedirect("Chatbox.jsp");
%>


</body>
</html>