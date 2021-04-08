package com.CaseStudyTemplate.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Artist {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String artistName;
	private String password;
	private String email;
	private String phone;
	private String state;

	public Artist() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Artist(String artistName, String password, String email, String phone, String state) {
		super();
		this.artistName = artistName;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.state = state;
	}

	@Column(name = "artist_Name", nullable = false, unique = true)
	public String getArtistName() {
		return artistName;
	}

	public void setArtistName(String artistName) {
		this.artistName = artistName;
	}

	@Column(name = "password", nullable = false)
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "email", nullable = false, unique = true)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "phone")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "state")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Student [artistName=" + artistName + ", password=" + password + ",  email=" + email + ", phone=" + phone
				+ ", state=" + state + "]";
	}

}
