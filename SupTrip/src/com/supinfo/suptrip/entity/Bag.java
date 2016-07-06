package com.supinfo.suptrip.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="bag")
public class Bag implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	private long id;
	
	private long orderstate;
	
	@ManyToOne
	@JoinColumn(name="user_fk")
	private User user;
	@ManyToOne
	@JoinColumn(name="trip_fk")
	private Trip trip;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(long orderstate) {
		this.orderstate = orderstate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Trip getTrip() {
		return trip;
	}
	public void setTrip(Trip trip) {
		this.trip = trip;
	}
	
	
	

}
