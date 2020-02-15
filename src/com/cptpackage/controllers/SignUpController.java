package com.cptpackage.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUpController extends HttpServlet {

	private static final long serialVersionUID = 6496253699314593055L;
	private static final String ROOT_URL = "/TorVerBook-Web/";
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/sign-up.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("first-name");
		String lastName = req.getParameter("last-name");
		String email = req.getParameter("email");
		String birthDate = req.getParameter("birth-date");
		String phoneNumber = req.getParameter("phone-number");

		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String passwordConfirm = req.getParameter("password-confirm");

		System.out.println(firstName + ":" + lastName + ":" + email + ":" + birthDate + ":" + phoneNumber + ":"
				+ username + ":" + password + ":" + passwordConfirm);

		resp.sendRedirect(ROOT_URL + "login");
	}

}
