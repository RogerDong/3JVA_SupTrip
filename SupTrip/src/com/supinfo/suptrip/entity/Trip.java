package com.supinfo.suptrip.entity;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
@Entity
@Table(name="trip")
public class Trip implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	
	@XmlElement
	private long id;
	@XmlElement
	@ManyToOne
	@JoinColumn(name="departure_campus_fk")
	private Campus departureCampus;
	
	@XmlElement
	@ManyToOne
	@JoinColumn(name="destination_campus_fk")
	private Campus destinationCampus;
	
	@OneToMany(mappedBy="trip")
	private Collection<Bag> bags;

	@XmlElement
	private Float fee;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Campus getDepartureCampus() {
		return departureCampus;
	}

	public void setDepartureCampus(Campus departureCampus) {
		this.departureCampus = departureCampus;
	}

	public Campus getDestinationCampus() {
		return destinationCampus;
	}

	public void setDestinationCampus(Campus destinationCampus) {
		this.destinationCampus = destinationCampus;
	}

	public Collection<Bag> getBags() {
		return bags;
	}

	public void setBags(Collection<Bag> bags) {
		this.bags = bags;
	}

	public Float getFee() {
		return fee;
	}

	public void setFee(Float fee) {
		this.fee = fee;
	}

	
	
	
}
