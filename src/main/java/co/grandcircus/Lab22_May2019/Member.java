package co.grandcircus.Lab22_May2019;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private String firstName;
	private String lastName;
	private String pNumber;
	private String email;
	private String password;
	
	public Member() {
		
	}
	public Member(String firstName, String lastName, String pNumber, String email, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.pNumber = pNumber;
		this.email = email;
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getpNumber() {
		return pNumber;
	}
	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Member [firstName=" + firstName + ", lastName=" + lastName + ", pNumber=" + pNumber + ", email=" + email
				+ ", password=" + password + "]";
	}
	
	

}
