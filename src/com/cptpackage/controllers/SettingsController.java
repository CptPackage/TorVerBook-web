package com.cptpackage.controllers;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cptpackage.account.Account;
import com.cptpackage.constants.RequestAttributes;

public class SettingsController extends AuthenticatedController {

	private static final long serialVersionUID = 1824973637829886223L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			super.doGet(req, resp);
			if (authenticatedUser) {
				req.getRequestDispatcher("/settings.jsp").forward(req, resp);
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
