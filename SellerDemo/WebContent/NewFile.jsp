<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!--DOCTYPE html-->
<html>
<head>
</head>
 <meta charset="ISO-8859-1">
 
 <title>Insert title</title>
  <link rel="stylesheet" href="styles/List.css">
</head>
<body style="background-image:url(file:///C:/Users/HASHANI%20SARANGA%20LIYA/Desktop/OOP%20project/SellerDemo/WebContent/WEB-INF/istockphoto-1205274326-612x612.jpg)">
          
   <form action="add" method = "POST">
   
 
   First Name<input type="text" name="fname"><br>
   Last Name<input type="text" name="lname"><br>
   Email<input type="text" name="email"><br>
   Address<input type="text" name="address"><br>
   Phone Number<input type="text" name="phone"><br>
   Password<input type="password" name="psw"><br>
   Gender<input type= "text" name="gender"><br>
   
   <input type="submit" name="submit" value ="Save Details"> 
	
	<div class="form-floating mb-3">
  <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
  <label for="floatingInput">Email address</label>
</div>
<div class="form-floating">
  <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
  <label for="floatingPassword">Password</label>
</div>
 </form>
 
</body>

</html>

