package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDao;
import com.DB.DBConnect;
import com.entities.User;


@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User us=new User();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		UserDao dao=new UserDao(DBConnect.getConnection());
		boolean f=dao.register(us);
		if(true) {
			PrintWriter out=response.getWriter();
			out.print("Data Inserted");
		}
		else {
			PrintWriter out=response.getWriter();
			out.print("Data not Inserted");
			  
		}
		
	}
	

}
  