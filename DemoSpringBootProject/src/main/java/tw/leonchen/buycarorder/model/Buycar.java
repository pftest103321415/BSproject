package tw.leonchen.buycarorder.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity @Table(name = "buycarorder")
@Component
public class Buycar {
	
	@Id @Column(name = "orderid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int orderid;
	
	@Column(name = "onekunit")
	private int onekunit;
	
	@Column(name = "fivekunit")
	private int fivekunit;
	
	@Column(name = "tenkunit")
	private int tenkunit;
	
	@Column(name = "totalprice")
	private int totalprice;
	
	@Column(name = "orderdate")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date orderdate;
	
	@Column(name = "orderstatus")
	private String orderstatus;
	
	
	
	

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getOnekunit() {
		return onekunit;
	}

	public void setOnekunit(int onekunit) {
		this.onekunit = onekunit;
	}

	public int getFivekunit() {
		return fivekunit;
	}

	public void setFivekunit(int fivekunit) {
		this.fivekunit = fivekunit;
	}

	public int getTenkunit() {
		return tenkunit;
	}

	public void setTenkunit(int tenkunit) {
		this.tenkunit = tenkunit;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public Date getOrderdate() {
		return orderdate;
	}

	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}

	public String getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}

	
	
	

	

}
