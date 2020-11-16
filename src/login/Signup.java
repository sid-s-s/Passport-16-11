package login;

public class Signup {
	private String username;
	private String email;
	private int mobile;
	private String password;
	private String cnf_password;
	
	public Signup() {
		// TODO Auto-generated constructor stub
	}

	public Signup(String username, String email, int mobile, String password, String cnf_password) {
		super();
		this.username = username;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.cnf_password = cnf_password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCnf_password() {
		return cnf_password;
	}

	public void setCnf_password(String cnf_password) {
		this.cnf_password = cnf_password;
	}

	@Override
	public String toString() {
		return "Signup [username=" + username + ", email=" + email + ", mobile=" + mobile + ", password=" + password
				+ ", cnf_password=" + cnf_password + "]";
	}

}

	