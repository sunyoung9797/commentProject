package co.yedam.hotel;

public class HotelVO {
	
	private String id;
	private String password;
	private String name;
	private int identityNumber;
	private String email;
	private int callNumber;
	
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
	public int getIdentityNumber() {
		return identityNumber;
	}
	public void setIdentityNumber(int identityNumber) {
		this.identityNumber = identityNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getCallNumber() {
		return callNumber;
	}
	public void setCallNumber(int callNumber) {
		this.callNumber = callNumber;
	}
	
	@Override
	public String toString() {
		return "HotelVO [id=" + id + ", password=" + password + ", name=" + name + ", identityNumber=" + identityNumber
				+ ", email=" + email + ", callNumber=" + callNumber + "]";
	}
	
}
