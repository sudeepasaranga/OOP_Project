
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit Seller Details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background-image:url(file:///C:/Users/HASHANI%20SARANGA%20LIYA/Desktop/OOP%20project/SellerDemo/WebContent/WEB-INF/images/gg.jpg)">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #ff6600">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Seller Management Application </a>
					<a href="https://www.xadmin.net" class="navbar-brand"> DashBoard
					 </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Users</a></li>
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">log out</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				
				<form action="update" method="post" style="background-color:#e0e0eb">
				
			
				<caption>
				
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		   </c:if>
						<c:if test="${user == null}">
            			   Edit Seller Information
            		  </c:if>
					</h2>
				</caption>
                 <%
                       String id = request.getParameter("id");
                       String fname = request.getParameter("fname");
                       String lname = request.getParameter("lname");
                       String email = request.getParameter("email");
                       String address = request.getParameter("address");
                       String phone = request.getParameter("phone");
                       String password= request.getParameter("pass");
                       String gender = request.getParameter("gen");
                        
                  %>
				<fieldset class="form-group">
					<input type="text" name="id" value="<%= id%>" readonly >
				</fieldset>

				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
					 value="<%= fname%>"  class="form-control" name="fname">
				</fieldset>

				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						 value="<%= lname%>"  class="form-control" name="lname">
						 
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						 value="<%= email%>"  class="form-control" name="email">
						 
				</fieldset>
				
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						 value="<%= address%>" class="form-control" name="address">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Phone Number</label> <input type="text"
						 value="<%= phone%>"  class="form-control" name="phone">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Password</label> <input type="text"
					 value="<%= password%>" class="form-control" name="password">
					 
				</fieldset>
				
				<fieldset class="form-group">
					<label>Gender</label> <input type="text"
						value="<%= gender%>" class="form-control"  name="gender">
				</fieldset>
				
                
				<input type="submit" name="submit" class="form-control" value="Update Seller Data" style="background-color: #ff4000; color:white;">
		       
		         
		       </form>
		         
			</div>
		</div>
	</div>
</body>
</html>

