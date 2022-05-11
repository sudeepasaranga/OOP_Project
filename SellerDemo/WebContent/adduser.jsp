
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Add Seller/User</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background-image:url(file:///C:/Users/HASHANI%20SARANGA%20LIYA/Desktop/OOP%20project/SellerDemo/WebContent/WEB-INF/images/ppp.jpg)">

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

		<div class="card">
			<div class="card-body">
			
			
			
			<caption>
				
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		   </c:if>
						<c:if test="${user == null}">
            			   Add Seller Information
            		  </c:if>
					</h2>
				</caption>
			
				
				<form action="add" method="post" style=" padding: 0px 50px 12px 10px; margin:  30px 60px -160px 50px; width: 700px; float: right; height: 130px;">
				
			
				

				
					<label><b>First Name</b></label> <input type="text"
					  class="form-control" name="fname" placeholder="First Name">
				

			
					<label><b>Last Name</b></label> <input type="text"
						   class="form-control" name="lname"  placeholder="Last Name">
				

				
					<label><b>Email</b></label> <input type="text"
						 class="form-control" name="email"   placeholder="Email-ex:_ Saman@gmail.com">
						 
		
				
				
					<label><b>Address</b></label> <input type="text"
						  class="form-control" name="address"   placeholder="Address">
				
				
			
					<label><b>Phone Number</b></label> <input type="text"
						   class="form-control" name="phone" placeholder="Phone_Num (10 digits)">
			
				
			
					<label><b>Password</b></label> <input type="password"
				     class="form-control" name="psw"   placeholder="Password">
					 
				
			
					<label><b>Gender</b></label> <input type="text"
						 class="form-control"  name="gender"  placeholder="Gender">
		
				
                
				
		       <label><b>To store the above information Click "Save Details"</b></label>
		         <input type="submit" name="submit" class="form-control" value="Save Details" style="background-color: #009900; color:white;">
		       </form>
		         
			</div>
		</div>
	</div>
</body>
</html>

