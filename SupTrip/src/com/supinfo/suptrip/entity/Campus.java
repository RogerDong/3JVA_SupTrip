package com.supinfo.suptrip.entity;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
@Entity
@Table(name="campus")
public class Campus implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	@XmlElement
	private long id;
	@XmlElement
	private String campusName;
	
	@OneToMany(mappedBy="campus")
	private Collection<User> users;
	
	@OneToMany(mappedBy="departureCampus")
	private Collection<Trip> tripsDeparture;
	
	@OneToMany(mappedBy="destinationCampus")
	private Collection<Trip> tripsDestination;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCampusName() {
		return campusName;
	}

	public void setCampusName(String campusName) {
		this.campusName = campusName;
	}

	public Collection<User> getUsers() {
		return users;
	}

	public void setUsers(Collection<User> users) {
		this.users = users;
	}

	public Collection<Trip> getTripsDeparture() {
		return tripsDeparture;
	}

	public void setTripsDeparture(Collection<Trip> tripsDeparture) {
		this.tripsDeparture = tripsDeparture;
	}

	public Collection<Trip> getTripsDestination() {
		return tripsDestination;
	}

	public void setTripsDestination(Collection<Trip> tripsDestination) {
		this.tripsDestination = tripsDestination;
	}

	
	
	
	
}
