package passport;

import java.util.Arrays;
import java.util.Date;

public class Passport {
	private String application_num;
	private String applicationFor;
	private String applicationType;
	private String firstname;
	private String lastname;
	private String gender;
	private String dob;
	private  int age;
	private String email;
	private String mobile;
	private String password;
	private String cnf_password;
	private String address;
	private String address2;
	private String city;
	private String state;
	private int zip;
	private String townBirth;
	private String maritialStatus;
	private String pan;
	private String voterId;
	private double aadhar;
	private byte[] photo;
	
	public Passport() {
		// TODO Auto-generated constructor stub
	}

	public Passport(String application_num, String applicationFor, String applicationType, String firstname,
			String lastname, String gender, String dob, int age, String email, String mobile, String password,
			String cnf_password, String address, String address2, String city, String state, int zip, String townBirth,
			String maritialStatus, String pan, String voterId, double aadhar, byte[] photo) {
		super();
		this.application_num = application_num;
		this.applicationFor = applicationFor;
		this.applicationType = applicationType;
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.dob = dob;
		this.age = age;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
		this.cnf_password = cnf_password;
		this.address = address;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.townBirth = townBirth;
		this.maritialStatus = maritialStatus;
		this.pan = pan;
		this.voterId = voterId;
		this.aadhar = aadhar;
		this.photo = photo;
	}

	public String getApplication_num() {
		return application_num;
	}

	public void setApplication_num(String application_num) {
		this.application_num = application_num;
	}

	public String getApplicationFor() {
		return applicationFor;
	}

	public void setApplicationFor(String applicationFor) {
		this.applicationFor = applicationFor;
	}

	public String getApplicationType() {
		return applicationType;
	}

	public void setApplicationType(String applicationType) {
		this.applicationType = applicationType;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getTownBirth() {
		return townBirth;
	}

	public void setTownBirth(String townBirth) {
		this.townBirth = townBirth;
	}

	public String getMaritialStatus() {
		return maritialStatus;
	}

	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getVoterId() {
		return voterId;
	}

	public void setVoterId(String voterId) {
		this.voterId = voterId;
	}

	public double getAadhar() {
		return aadhar;
	}

	public void setAadhar(double aadhar) {
		this.aadhar = aadhar;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "Passport [application_num=" + application_num + ", applicationFor=" + applicationFor
				+ ", applicationType=" + applicationType + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", gender=" + gender + ", dob=" + dob + ", age=" + age + ", email=" + email + ", mobile=" + mobile
				+ ", password=" + password + ", cnf_password=" + cnf_password + ", address=" + address + ", address2="
				+ address2 + ", city=" + city + ", state=" + state + ", zip=" + zip + ", townBirth=" + townBirth
				+ ", maritialStatus=" + maritialStatus + ", pan=" + pan + ", voterId=" + voterId + ", aadhar=" + aadhar
				+ ", photo=" + Arrays.toString(photo) + "]";
	}

	
}