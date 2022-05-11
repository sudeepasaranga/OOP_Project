<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title> List of Sellers </title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	
</head>
<body style="background-image:url(file:///C:/Users/HASHANI%20SARANGA%20LIYA/Desktop/OOP%20project/SellerDemo/WebContent/WEB-INF/images/_982_Low-Contrast-Photography-and-How-to-Correct-it-in-Post-Processing.jpg)">

	<header>
     <div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-image:url(file:///C:/Users/HASHANI%20SARANGA%20LIYA/Desktop/OOP%20project/SellerDemo/WebContent/WEB-INF/images/rrr.jpg)">
    <div class="container-fluid">
         <h3 class="text-center"><b> ---------------------| Property Sale Of Sri-Lanka |--------------------</b></h3>
    </div>
  </nav>
</div>

		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: blue">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Seller
					Management Application </a>
				<a href="https://www.xadmin.net" class="navbar-brand"> DashBoard
					 </a>
						
			</div>
			
			
	      <!-- Example single danger button -->
          <div class="btn-group">
                  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                   Admin
                 </button>
                 <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">db handler</a>
                    <a class="dropdown-item" href="#">property administrater</a>
                    <a class="dropdown-item" href="#">Manager</a>
                    <div class="dropdown-divider"></div>
                         <a class="dropdown-item" href="#">Separated link</a>
                     </div>
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

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center"><b>List of Sellers</b></h3>
			<hr>
			<div class="container text-left">

				<a href="adduser.jsp" class="btn btn-success">+Add
					New Seller</a>
			</div>
			
			
			
		 <form style= "margin-top:60px; float:right; margin-right:40px; margin-left:40px; color:black;">
	      <input type="text" placeholder="Search" style= " padding:8px; border:none; font-size:16px;">
	      <button onclick="myFunction()" style=" float:right; background:#0000ff; color:white; border-radius:0px 5px 5px 0px; cursor:pointer;position:relative;padding:10px;font-family:sans-serif;border:none; font-size:12px;"> Search</button>
	   </form>
	   
	   
	   
			<br>
			<table class="table table-bordered" style="background-color: #0080ff">
				<thead>
					<tr>
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Address</th>
						<th>PhoneNum</th>
						<th>Password</th>
					    <th>Gender</th>
					    <th> Actions</th>
					</tr>
				</thead>
				<tbody style="background-color: 	 #80d4ff" style= "table-border-color: black">
				
					<c:forEach var="sel" items="${selDetails}">
					
					    
					
					      <c:set var="id" value="${sel.id}"/>
					      <c:set var="fname" value="${sel.fname}"/>
					      <c:set var="lname" value="${sel.lname}"/>
					      <c:set var="email" value="${sel.email}"/>
					      <c:set var="address" value="${sel.address}"/>
					      <c:set var="phone" value="${sel.phone}"/>
					      <c:set var="password" value="${sel.password}"/>
					      <c:set var="gender" value="${sel.gender}"/>
					      
					      
					
					      
                        <tr>
							<td><c:out value="${sel.id}" /></td>
							<td><c:out value="${sel.fname}" /></td>
							<td><c:out value="${sel.lname}" /></td>
							<td><c:out value="${sel.email}" /></td>
							<td><c:out value="${sel.address}" /></td>
							<td><c:out value="${sel.phone}" /></td>
							<td><c:out value="${sel.password}" /></td>
							<td><c:out value="${sel.gender}" /></td>
							
							
							<c:url value="UpdateNew.jsp" var="selUpdate">
								
								      <c:param name="id" value="${id}"/>
								      <c:param name="fname" value="${fname}"/>
								      <c:param name="lname" value="${lname}"/>
								      <c:param name="email" value="${email}"/>
								      <c:param name="address" value="${address}"/>
								      <c:param name="phone" value="${phone}"/>
								      <c:param name="pass" value="${password}"/>
								      <c:param name="gen" value="${gender}"/>
								      
								
						 </c:url>
							 
							<td><a href="${selUpdate}"><input type="button" name="edit" value= "Edit"  style="background-color:#ff9900"></a>
						           &nbsp;&nbsp;&nbsp;&nbsp;
						           
						           
						           <c:url value="deleteSeller.jsp" var="selDelete">
						           
						              <c:param name="id" value="${id}"/>
								      <c:param name="fname" value="${fname}"/>
								      <c:param name="lname" value="${lname}"/>
								      <c:param name="email" value="${email}"/>
								      <c:param name="address" value="${address}"/>
								      <c:param name="phone" value="${phone}"/>
								      <c:param name="pass" value="${password}"/>
								      <c:param name="gen" value="${gender}"/>
						           
						           
						           </c:url>
						         <a href="${selDelete}"><input type = "button" name="delete" value="Delete" style="background-color:#ff0000"></a>
						    </td> 
								
				    	 </tr>
								
								
	                     
					</c:forEach>
		
				</tbody>

			</table>
			   
		         
		  
		</div>
	</div>
	
			     	   
								
								
	        
	                   
	                         
	                         
	                         
	                         
	                          
</body>
</html>