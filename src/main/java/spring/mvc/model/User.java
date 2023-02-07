package spring.mvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "UserInfo")
public class User {

	@Id
	@GenericGenerator(name = "accNo", strategy = "spring.mvc.model.CustomIdGenerator")
	@GeneratedValue(generator = "accNo")
	@Column(length = 8)
	private String accountNo;

	@Column(length = 20)
	private String fName;

	@Column(length = 20)
	private String mName;

	@Column(length = 20)
	private String lName;

	@Column(length = 10)
	private String contact;

	@Column(length = 15)
	private String dob;

	@Column(length = 40)
	private String email;

	@Column(length = 10)
	private String gender;

	private String address;

	@Column(length = 15)
	private String city;

	@Column(length = 15)
	private String state;

	@Column(length = 10)
	private String zip;

	@Column(length = 10)
	private String password;

	@Column(length = 100)
	private String passRecoverQue;

	@Column(length = 50)
	private String ans;

	@Column(length = 40)
	private String branch;

	@Column(length = 5)
	private String branchCode;

	private double accountBal;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String accountNo, String fName, String mName, String lName, String contact, String dob, String email,
			String gender, String address, String city, String state, String zip, String password,
			String passRecoverQue, String ans, String branch, String branchCode, double accountBal) {
		super();
		this.accountNo = accountNo;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.contact = contact;
		this.dob = dob;
		this.email = email;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.password = password;
		this.passRecoverQue = passRecoverQue;
		this.ans = ans;
		this.branch = branch;
		this.branchCode = branchCode;
		this.accountBal = accountBal;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassRecoverQue() {
		return passRecoverQue;
	}

	public void setPassRecoverQue(String passRecoverQue) {
		this.passRecoverQue = passRecoverQue;
	}

	public String getAns() {
		return ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(String branchCode) {
		this.branchCode = branchCode;
	}

	public double getAccountBal() {
		return accountBal;
	}

	public void setAccountBal(double accountBal) {
		this.accountBal = accountBal;
	}

	@Override
	public String toString() {
		return "User [accountNo=" + accountNo + ", fName=" + fName + ", mName=" + mName + ", lName=" + lName
				+ ", contact=" + contact + ", dob=" + dob + ", email=" + email + ", gender=" + gender + ", address="
				+ address + ", city=" + city + ", state=" + state + ", zip=" + zip + ", password=" + password
				+ ", passRecoverQue=" + passRecoverQue + ", ans=" + ans + ", branch=" + branch + ", branchCode="
				+ branchCode + ", accountBal=" + accountBal + "]";
	}

}
