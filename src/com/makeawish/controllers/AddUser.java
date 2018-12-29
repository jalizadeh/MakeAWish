package com.makeawish.controllers;

import java.io.IOException;
import java.util.Calendar;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makeawish.models.Users;
import com.makeawish.services.UserService;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	UserService us;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Users u = new Users();
		
		u.setFirstName("javad");
		u.setLastName("Alizadeh");
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, 1989);
		cal.set(Calendar.MONTH, 7);
		cal.set(Calendar.DAY_OF_MONTH, 24);
		u.setDob(cal.getTime());
		
		u.setUsername("jalizadeh");
		u.setBio("Salam naz chetori");
		
		System.out.println(u.toString());
		
		us.addUser(u);
		
		
		//response.sendRedirect("ShowUsers");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
