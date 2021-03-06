package com.cptpackage.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.cptpackage.db.DBManager;
import com.cptpackage.highlight.Highlight;

public class HighlightDAO {
	
	private DBManager dbManager;
	private Highlight highlight;
	
	public HighlightDAO() throws SQLException {
		dbManager = DBManager.getInstance();
	}
	
	public void createHighlightObject(String hlType) throws SQLException {
		ResultSet result = null;
		result = dbManager.getHighlight(hlType);
	
		if(result.first()) {
			highlight = new Highlight();
			highlight.setHighlightType(result.getString("Type"));
			highlight.setThickness(result.getInt("Thickness"));
			highlight.setPricePerDay(result.getInt("PricePerDay"));
			highlight.setFont(result.getString("Font"));
			highlight.setLevelOfVisibility(result.getInt("Visibility"));
			highlight.setTextColor(result.getString("TextColor"));
			highlight.setBackgroundColor(result.getString("BackgroundColor"));
		} else {
			throw new SQLException();
		}	
	}
	
	public Highlight getHighlightObject() {
		return highlight;
	}
	
}
