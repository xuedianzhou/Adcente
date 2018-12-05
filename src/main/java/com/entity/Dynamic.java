package com.entity;

import java.util.Date;

public class Dynamic {
	private int id;
	private Date dtime;
	private double dmoney;
	private int uid;
	private double dcharge;
	private double dreality;
	private double dapply;
	private int state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDtime() {
		return dtime;
	}
	public void setDtime(Date dtime) {
		this.dtime = dtime;
	}
	public double getDmoney() {
		return dmoney;
	}
	public void setDmoney(double dmoney) {
		this.dmoney = dmoney;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public double getDcharge() {
		return dcharge;
	}
	public void setDcharge(double dcharge) {
		this.dcharge = dcharge;
	}
	public double getDreality() {
		return dreality;
	}
	public void setDreality(double dreality) {
		this.dreality = dreality;
	}
	public double getDapply() {
		return dapply;
	}
	public void setDapply(double dapply) {
		this.dapply = dapply;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Dynamic(int id, Date dtime, double dmoney, int uid, double dcharge,
			double dreality, double dapply, int state) {
		super();
		this.id = id;
		this.dtime = dtime;
		this.dmoney = dmoney;
		this.uid = uid;
		this.dcharge = dcharge;
		this.dreality = dreality;
		this.dapply = dapply;
		this.state = state;
	}
	public Dynamic() {
		super();
	}
	@Override
	public String toString() {
		return "Dynamic [id=" + id + ", dtime=" + dtime + ", dmoney=" + dmoney
				+ ", uid=" + uid + ", dcharge=" + dcharge + ", dreality="
				+ dreality + ", dapply=" + dapply + ", state=" + state + "]";
	}
	
}
