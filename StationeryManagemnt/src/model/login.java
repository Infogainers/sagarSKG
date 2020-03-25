package model;

public class login {
	String username;
	String password;
	
	
	public login(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "login [username=" + username + ", password=" + password + "]";
	}
	
	
	
	
}
