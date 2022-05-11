package com.seller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = SellerDButil.deleteSeller(id);
		
		if(isTrue == true) {
			 
			
			List<SellerD> selDetails = SellerDButil.getSellerDetails(id);
			  request.setAttribute("selDetails", selDetails);
			  
		     RequestDispatcher dispatcher = request.getRequestDispatcher("SellerList.jsp");
		     dispatcher.forward(request, response);
		     
		}
		else {
		   
		     
		     RequestDispatcher dispatcher = request.getRequestDispatcher("unsuccess.jsp");
		     dispatcher.forward(request, response);
		}
	}

}
