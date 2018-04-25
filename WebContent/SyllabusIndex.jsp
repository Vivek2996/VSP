<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="headd.jsp" />
<body>
<p><b><h1> Click the content you want to View</h1></b></p>
<form action="Php" enctype="multipart/form-data" method="post"><p>
<br>
         <p><input type="submit" name="php" value="php" class="button" style="height: 50px; width: 100px;background-color:#97cfc3" /></p>
    	 <br>
          </form>
          
          <form action="Java" enctype="multipart/form-data" method="post"><p>
         <p><input type="submit" name="java" value="java" class="button" style="height: 50px; width: 100px;background-color:#97cfc3"  /></p>
    	 <br>
          </form>
          
          <form action="Test" enctype="multipart/form-data" method="post"><p>
         <p><input type="submit" name="testing" value="testing" class="button" style="height: 50px; width: 100px;background-color:#97cfc3"  /></p>
    	 <br>
          </form>
          
          <form action="Android" enctype="multipart/form-data" method="post"><p>
         <p><input type="submit" name="android" value="android" class="button" style="height: 50px; width: 100px;background-color:#97cfc3;"  /></p>
    	 <br>
          </form>
</body>
</html>