package com.ncdweb.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "patinfo1")
public class Pat {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int slno;
	
	
//	long min = 99999999999999L;
//	long max = 10000000000000L;
	private String patid= Long.toString((long)((Math.random() * (99999999999999L - 10000000000000L + 1) + 10000000000000L)));
//	private String patid=Long.toString(random_int);;
	private String firstname;
	private String lastname;
	private String email;
	private String gender;
	private String dob;
	private String phno;
	private String adhar;
	private String pin;
	public String result;
	public String score;

	


//the value of (max-min+1)+min is 10^^14+1
	public Pat() {
		super();

	}

	public Pat(int slno, String patid, String firstname, String lastname, String email, String gender,String dob, String phno,
			String adhar, String pin, String result, String score) {
		super();
		this.slno = slno;
		this.patid = patid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.dob=dob;
		this.phno = phno;
		this.adhar = adhar;
		this.pin = pin;
		this.result = result;
		this.score = score;
	}

	public int getSlno() {
		return slno;
	}

	public void setSlno(int slno) {
		this.slno = slno;
	}

	public String getPatid() {
		return patid;
	}

	public void setPatid(String patid) {
		this.patid = patid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String gender) {
		this.dob = dob;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}

	public String getAdhar() {
		return adhar;
	}

	public void setAdhar(String adhar) {
		this.adhar = adhar;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Pat [slno=" + slno + ", patid=" + patid + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", email=" + email + ", gender=" + gender + ",dob=" + dob + ", phno=" + phno + ", adhar=" + adhar + ", pin=" + pin
				+ ", result=" + result + ", score=" + score + "]";
	}

}
