package com.makeawish.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: User
 *
 */
@Entity
public class Users implements Serializable {

	@Transient
	private static final long serialVersionUID = 1L;

	public Users() {
		super();
	}
   
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String username;
	
	private String firstName;
	private String lastName;
	
	@Temporal(TemporalType.DATE)
	private Date dob;
	
	private String bio;

	public Integer getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public Date getDob() {
		return dob;
	}

	public String getBio() {
		return bio;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", dob=" + dob + ", bio=" + bio + "]";
	}
}