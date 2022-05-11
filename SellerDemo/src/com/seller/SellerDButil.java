 package com.seller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class SellerDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	  

	//insert
	 public static boolean insertseller( String Fname, String Lname, String email, String address, String phone, String password, String gender) {
          
		 boolean isSuccess = false;
	     
	     
	     try {
	    	 
	    	  con = DBconnect.getConnection();
			  stmt = con.createStatement();
			  String sql = "insert into seller values(0, '"+Fname+"','"+Lname+"', '"+email+"', '"+address+"', '"+phone+"', '"+password+"', '"+gender+"')";
	    	  int rs = stmt.executeUpdate(sql);
			  
			  
			  if(rs>0) {
	    		 
	    		 isSuccess = true;
	    		 
	    	  }else {
	    		 
	    		 isSuccess = false;
	    	 }
	    	 
	     }
	     catch(Exception e) {
	    	 
	    	 e.printStackTrace();
	     }
	     
	     
	     return isSuccess;
	     
	  }

	//retrive
	 public static List<SellerD> getSellerDetails(String Id){
		 
		  
		  ArrayList<SellerD> sel = new ArrayList<>();
		  
		  try {
			  con = DBconnect.getConnection();
			  stmt = con.createStatement();
			  String sql = "select * from seller";
			  rs = stmt.executeQuery(sql);
			  
			  while(rs.next()) {
				  
				  int id = rs.getInt(1);
				  String fname = rs.getString(2);
				  String lname = rs.getString(3);
				  String email = rs.getString(4);
				  String address = rs.getString(5);
				  String phone = rs.getString(6);
				  String password = rs.getString(7);
				  String gender = rs.getString(8);
				  
				  SellerD sd = new SellerD(id,fname,lname,email,address,phone,password,gender);
				  sel.add(sd);
				  
			  }
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		  
		 return sel;
		  
	  }

	//update
	 public static boolean updateseller(String id, String fname, String lname, String email, String address, String phone, String password, String gender) {
		 
		 
		   try {
			   
			   con = DBconnect.getConnection();
			   stmt = con.createStatement();
			   String sql = "update seller set fName='"+fname+"', lName='"+lname+"', email='"+email+"', address='"+address+"', phone='"+phone+"', password='"+password+"', gender='"+gender+"'"
			   		+ "where id='"+id+"'";
			   int rs = stmt.executeUpdate(sql);
			   
			   
			   if(rs > 0) {
		    		 
		    		 isSuccess = true;
		    		 
		       }
			   else {
		    		 
		    		 isSuccess = false;
		    	 }
		    	 
		   }
		   catch(Exception e) {
			   e.printStackTrace();
		   }
		 
		 return isSuccess;
	 } 
    

	//delete
	 
	 public static boolean deleteSeller(String id) {
		 
		 int convId = Integer.parseInt(id);
		 
		 try {
			 
			   con = DBconnect.getConnection();
			   stmt = con.createStatement();
			   String sql  = 	"delete from seller where id='"+convId+"'";
			   int rs = stmt.executeUpdate(sql);
			   
			   if(rs > 0) {
				   
				   isSuccess = true;
				   
			    }
			   else {
		    		 
		    		 isSuccess = false;
		    	 }
 
		 }
		 catch(Exception e) {
			 
		 }
		  
		 
		 return isSuccess;
	 }
}
   

