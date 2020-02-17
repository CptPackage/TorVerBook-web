package com.cptpackage.controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cptpackage.ad.Ad;
import com.cptpackage.dao.AdDAO;

public class DashboardController extends AuthenticatedController {

	private static final long serialVersionUID = -8866040628982966855L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			super.doGet(req, resp);
			if (authenticatedUser) {
				List<Ad> ads = AdDAO.getInstance().getHomepageAdsList();
				if (ads != null && !ads.isEmpty()) {
					req.setAttribute("ads-list", ads);
				}
				req.getRequestDispatcher("/dashboard.jsp").forward(req, resp);
			}
		} catch (ServletException | IOException | SQLException | ParseException ex) {
			Logger.getLogger(this.getClass().getSimpleName()).severe(ex.getMessage());
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		try {
			super.doPost(req, resp);
			req.getRequestDispatcher("/dashboard.jsp").forward(req, resp);
		} catch (ServletException | IOException ex) {
			Logger.getLogger(this.getClass().getSimpleName()).severe(ex.getMessage());
		}
	}

}