package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   String id = request.getParameter("id");
		   String fname = request.getParameter("fname");
		   String lname = request.getParameter("lname");
		   String email = request.getParameter("email");
		   String address = request.getParameter("address");
		   String phone = request.getParameter("phone");
		   String password = request.getParameter("password");
		   String gender = request.getParameter("gender");
		   
          boolean isTrue;
          
          isTrue = SellerDButil.updateseller(id, fname, lname, email, address, phone, password, gender);
          
          
          if(isTrue == true) {
        	  
        	  List<SellerD> selDetails = SellerDButil.getSellerDetails(fname);
			  request.setAttribute("selDetails", selDetails);
        	  
        	  RequestDispatcher dis = request.getRequestDispatcher("SellerList.jsp");
        	  dis.forward(request, response);
          }
          else {
        	  RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
        	  dis.forward(request, response);
          }
	}

}
