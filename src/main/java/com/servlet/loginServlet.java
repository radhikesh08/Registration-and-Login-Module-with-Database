package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDao;
import com.DB.DBConnect;
import com.entities.User;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		UserDao dao=new UserDao(DBConnect.getConnection());
		User user=dao.getLogin(email, password);
		
		if(user!=null) {
			HttpSession session=request.getSession();
			session.setAttribute("user-obj", user);
			response.sendRedirect("home.jsp");
			
		}
		else {
			
				PrintWriter out=response.getWriter();
				out.print(" <a class=\"nav-link\" href=\"register.jsp\"> Please Register</a>");
				  
			
		}
		
	}

}
