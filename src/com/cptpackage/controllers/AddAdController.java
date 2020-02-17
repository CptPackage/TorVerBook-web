package com.cptpackage.controllers;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddAdController extends AuthenticatedController {

	private static final long serialVersionUID = -8576925470099521928L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			super.doGet(req, resp);
			if (authenticatedUser) {
				req.getRequestDispatcher("/add-ad.jsp").forward(req, resp);
			}
		} catch (ServletException | IOException ex) {
			Logger.getLogger(this.getClass().getSimpleName()).severe(ex.getMessage());
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}

}
