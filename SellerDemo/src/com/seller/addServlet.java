package com.seller; 

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // Admin saves inserted data
		
		
		   String Fname= request.getParameter("fname");
		   String Lname= request.getParameter("lname");
		   String email= request.getParameter("email");
		   String address = request.getParameter("address");
		   String phone = request.getParameter("phone");
		   String password = request.getParameter("psw");
		   String gender = request.getParameter("gender");
		    
		   
		   boolean isTrue;
		   
		 
		   isTrue = SellerDButil.insertseller( Fname, Lname, email, address, phone, password, gender);
		   
		   
		   if(isTrue == true) {
			  
			  List<SellerD> selDetails = SellerDButil.getSellerDetails(Fname);
			  request.setAttribute("selDetails", selDetails);
			   
			   RequestDispatcher dis = request.getRequestDispatcher("SellerList.jsp");
			   dis.forward(request, response);
		   }
		   else {
			   RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			   dis2.forward(request, response);
		   }
		   
		  
		  
		  
    }
	
	
	
	
}