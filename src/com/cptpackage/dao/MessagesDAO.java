package com.cptpackage.dao;

import com.cptpackage.account.User;
import com.cptpackage.message.Message;

public class MessagesDAO {

	private static MessagesDAO instance = null;

	public Message getLatest20Messages(User srcUser, User dstUser) {
		return null;
	}

	public static MessagesDAO getInstance() {
		if (instance == null)
			instance = new MessagesDAO();
		return instance;
	}
}
