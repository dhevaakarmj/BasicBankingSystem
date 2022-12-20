package myPojo;

import javax.persistence.*;
import java.util.*;

@Entity
public class Customer {

	@Id
	private int id;
	private String name;
	private String email;
	private String address;
	private String contact;
	private String accNumber;
	private int balance;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getAccNumber() {
		return accNumber;
	}
	public void setAccNumber(String accNumber) {
		this.accNumber = accNumber;
	}
	
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public int getBalance() {
		return balance;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", contact=" + contact + "]";
	}
	
	
	
}
