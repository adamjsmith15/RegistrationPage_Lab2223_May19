package co.grandcircus.Lab22_May2019;

import java.time.LocalDate;

import org.springframework.stereotype.Component;

@Component
public class Member {
	private String firstName;
	private String lastName;
	private String pNumber;
	private String email;
	private String password;
	private String bDate;
	private String gender;
	private String description;
	private int id;
	
	public Member() {
		
	}
	
	public Member(String firstName, String lastName, String pNumber, String email, String password, String bDate,
			String gender, String description, int id) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.pNumber = pNumber;
		this.email = email;
		this.password = password;
		this.bDate = bDate;
		this.gender = gender;
		this.description = description;
		this.id = id;
	}
	

	public Member(String firstName, String lastName, String pNumber, String email, String password, String bDate,
			String gender, String description) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.pNumber = pNumber;
		this.email = email;
		this.password = password;
		this.bDate = bDate;
		this.gender = gender;
		this.description = description;
	}

	public String getbDate() {
		return bDate;
	}

	public void setbDate(String bDate) {
		this.bDate = bDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
				+ ", password=" + password + ", bDate=" + bDate + ", gender=" + gender + ", description=" + description
				+ ", id=" + id + "]";
	}
	
	

	
	

}
