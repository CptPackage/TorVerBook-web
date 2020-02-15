package com.cptpackage.controllers;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cptpackage.db.DBManager;

public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1338475680890203166L;
	private DBManager dbManager;

	@Override
	public void init() throws ServletException {
		super.init();
		dbManager = DBManager.getInstance();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.getRequestDispatcher("/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");

		if (username.isEmpty() || password.isEmpty()) {
			req.setAttribute("errorMessage", "Wrong Credentials");
			doGet(req, resp);
			return;
		}

		ResultSet resultSet = null;

		try {
			resultSet = dbManager.userLogIn(username, password);
		} catch (SQLException e) {

		}
		
		try {
			if (resultSet.first()) {
				req.getSession().setAttribute("authenticated", true);
				req.getSession().setAttribute("username", resultSet.getString("username"));
				resp.sendRedirect("/TorVerBook-Web/dashboard");
			} else {
				req.setAttribute("errorMessage", "Wrong Credentials");
				doGet(req, resp);
			}
		} catch (ServletException | IOException | SQLException e) {
			e.printStackTrace();
		}
	}
}
