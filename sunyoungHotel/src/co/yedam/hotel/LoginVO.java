package co.yedam.hotel;

public class LoginVO {
	
	private String id;
	private String password;
	private String name;
	private String identityNumber;
	private String email;
	private String callNumber;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdentityNumber() {
		return identityNumber;
	}
	public void setIdentityNumber(String identityNumber) {
		this.identityNumber = identityNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCallNumber() {
		return callNumber;
	}
	public void setCallNumber(String callNumber) {
		this.callNumber = callNumber;
	}
	
	@Override
	public String toString() {
		return "LoginVO [id=" + id + ", password=" + password + ", name=" + name + ", identityNumber=" + identityNumber
				+ ", email=" + email + ", callNumber=" + callNumber + "]";
	}
	
}
