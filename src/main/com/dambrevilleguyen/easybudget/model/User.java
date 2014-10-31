package com.dambrevilleguyen.easybudget.model;

public class User {
	
	private String login;
	private String password;
	private String id;

	public User(String login, String password, String id) {
		this.login = login;
		this.password = password;
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
