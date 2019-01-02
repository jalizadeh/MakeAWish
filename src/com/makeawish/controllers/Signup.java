package com.makeawish.controllers;

import java.io.IOException;
import java.util.Calendar;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.makeawish.models.Gender;
import com.makeawish.models.Users;
import com.makeawish.services.UserService;

/**
 * Servlet implementation class Index
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	@EJB
	UserService us;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/signup.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users user = new Users();
		
		user.setFirstName(request.getParameter("firstname"));
		user.setLastName(request.getParameter("lastname"));
		user.setGender(Gender.valueOf(request.getParameter("gender")));
		
		//calculate date of birth
		String dob_raw = request.getParameter("date");
		
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.YEAR, Integer.parseInt(dob_raw.split("/")[2]));
		cal.set(Calendar.MONTH, Integer.parseInt(dob_raw.split("/")[1]) - 1 );
		cal.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dob_raw.split("/")[0]));
		user.setDob(cal.getTime());
		
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		us.addUser(user);
		
		response.sendRedirect("Login");
	}

}
