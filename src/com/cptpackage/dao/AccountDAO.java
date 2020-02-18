package com.cptpackage.dao;

import static com.cptpackage.account.AccountType.RULE_CHECKER;
import static com.cptpackage.account.AccountType.USER;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import com.cptpackage.account.Account;
import com.cptpackage.account.AccountType;
import com.cptpackage.account.RuleChecker;
import com.cptpackage.account.User;
import com.cptpackage.db.DBManager;

public class AccountDAO {

	private static AccountDAO instance = null;

	private DBManager dbManager;
	private Account currentAccount;
	private ResultSet result;

	// login case
	public Account logIn(String username, String password) throws SQLException {
		dbManager = DBManager.getInstance();
		AccountType accountType = getAccountTypeByPrefix(username);
		if (accountType == USER) {
			result = dbManager.userLogIn(username, password);
		} else if (accountType == RULE_CHECKER) {
			result = dbManager.ruleCheckerLogIn(username, password);
		}
		// if exists 1 row in result, then we succesfully logged in
		if (result.first()) {
			return createAccountObject(result, accountType);
		}
		return null;
	}

	public void registerUser(User user) throws SQLException {
		dbManager = DBManager.getInstance();
		dbManager.insertNewUser(user);
	}

	private Account createAccountObject(ResultSet result, AccountType accountType) throws SQLException {
		Account account = null;
		if (accountType == USER) {
			User user = new User(result.getString("Name"), result.getString("Surname"), result.getString("Username"),
					result.getString("Email"), result.getString("Password"));
			user.setPhoneNumber(result.getString("PhoneNumber"));
			user.setBirthDate(result.getString("Birthdate"));
			user.setMoney(result.getInt("Money"));
			user.setNumViolations(result.getInt("NumViolations"));
			user.setStatus(result.getInt("isBanned"));
			account = user;
		} else if (accountType == RULE_CHECKER) {
			RuleChecker ruleChecker = new RuleChecker(result.getString("Name"), result.getString("Surname"),
					result.getString("Username"), result.getString("Email"), result.getString("Password"));
			ruleChecker.setPhoneNumber(result.getString("PhoneNumber"));
			ruleChecker.setBirthDate(result.getString("Birthdate"));
			ruleChecker.setSalary(result.getInt("Salary"));
			ruleChecker.setWorkStartTime(LocalDate.parse(result.getString("WorkStartTime")));
			ruleChecker.setworkFinishTime(LocalDate.parse(result.getString("WorkFinishTime")));
			account = ruleChecker;
		}
		return account;
	}

	public boolean updateAccountInfo(String originalUsername, Account modifiedAccount) throws SQLException {
		dbManager = DBManager.getInstance();
		AccountType accountType = modifiedAccount.getUsername().startsWith("@") ? RULE_CHECKER : USER;
		return dbManager.updateAccountInfo(modifiedAccount, accountType, originalUsername);
	}

	public Account getAccountObject() {
		return currentAccount;
	}

	public int getNumViolation(String username) throws SQLException {
		dbManager = DBManager.getInstance();
		return dbManager.getNumViolations(username).getInt("NumViolations");
	}

	public void toBan(String username) throws SQLException {
		dbManager = DBManager.getInstance();
		dbManager.setBannedUser(username);
	}

	public void incViolations(String username, int violations) throws SQLException {
		dbManager = DBManager.getInstance();
		dbManager.incNumViolations(username, violations);
	}

	public static AccountDAO getInstance() {
		if (instance == null)
			instance = new AccountDAO();
		return instance;
	}

	public AccountType getAccountTypeByPrefix(String username) {
		final String prefixFlag = "@";
		return username.startsWith(prefixFlag) ? RULE_CHECKER : USER;
	}
}
