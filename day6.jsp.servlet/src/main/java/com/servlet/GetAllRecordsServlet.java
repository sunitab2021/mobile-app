package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.UserDTO;


@WebServlet("/GetAllRecordsServlet")
public class GetAllRecordsServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = request.getParameter("username");
		String pass = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//Creating Connection
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampledb", "root", "easy2021@");
			 //If we write here connection conn then it will be a local variable
			
			//Creating Statement
			
			PreparedStatement ps = conn.prepareStatement("select * from student");
			
			
			//Execute Query
			
			ResultSet rs = ps.executeQuery();
			List<UserDTO> usersList = new ArrayList<>();
			
			//executeQuery(); used only for Select Query Only	
			
			while (rs.next()) {
				String username = rs.getString(1);
				String password = rs.getString(2);
				String name = rs.getString(3);
				String email = rs.getString(4);
				int ssn = rs.getInt(5);
				
				//request.setAttribute("username", username);
				//request.setAttribute("password", password);
				//request.setAttribute("name", name);
				//request.setAttribute("email", email);
				//request.setAttribute("ssn", ssn);
				
				UserDTO userdto=new UserDTO(username,password,name,email,ssn);
				usersList.add(userdto);
			}
				request.setAttribute("userslist", usersList);
				request.getRequestDispatcher("allUsers.jsp").forward(request, response);
				
				
			
			//else {
			//	request.setAttribute("username", "username or password is not correct. Login again");
			//	request.getRequestDispatcher("login1.jsp").forward(request, response);
			//}
		
		
	}
		catch (Exception ex) {
			ex.printStackTrace();
		}	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
