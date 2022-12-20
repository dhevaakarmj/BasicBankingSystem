package myPojo;

import javax.persistence.*;
import java.util.*;

@Entity
public class Transactions {

	@Id @GeneratedValue(strategy = GenerationType.TABLE)
	private int id;
	private String date;
	private String name;
	private int debit;
	private int credit;
	
	private int accNumber;
	private int balance;
	
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDebit() {
		return debit;
	}

	public void setDebit(int debit) {
		this.debit = debit;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public int getAccNumber() {
		return accNumber;
	}

	public void setAccNumber(int accNumber) {
		this.accNumber = accNumber;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "Transaction [id=" + id + ", date=" + date + ", name=" + name + ", debit=" + debit + ", credit=" + credit
				+ ", accNumber=" + accNumber + ", balance=" + balance + "]";
	}


}
