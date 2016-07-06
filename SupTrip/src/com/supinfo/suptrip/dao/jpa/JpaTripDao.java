package com.supinfo.suptrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.supinfo.suptrip.dao.TripDao;
import com.supinfo.suptrip.entity.Trip;

public class JpaTripDao implements TripDao{
	private EntityManager em;
	public JpaTripDao(EntityManagerFactory emf) {
		em = emf.createEntityManager();
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Trip> findTripsByDepartureAndDestination(String departure,
			String destination) {
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select t from Trip as t where t.destinationCampus.campusName = :destinationCampus and t.departureCampus.campusName = :departureCampus");
		q.setParameter("destinationCampus", destination);
		q.setParameter("departureCampus", departure);
		List<Trip> tripList = null;
		try {
			t.begin();
			tripList = q.getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		return tripList;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Trip> getAllTrips() {
		
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select t from Trip as t");
		List<Trip> tripList = null;
		try {
			t.begin();
			tripList = q.getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		return tripList;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Trip> findTripsByDestination(String destination){
		
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select t from Trip as t where t.destinationCampus.campusName = :destinationCampus");
		q.setParameter("destinationCampus", destination);
		List<Trip> tripList = null;
		try {
			t.begin();
			tripList = q.getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		return tripList;
	}
	@SuppressWarnings("unchecked")
	public List<Trip> findTripsByDeparture(String departure){
		
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select t from Trip as t where t.departureCampus.campusName = :departureCampus");
		q.setParameter("departureCampus", departure);
		List<Trip> tripList = null;
		try {
			t.begin();
			tripList = q.getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		return tripList;
	}
	@Override
	public boolean addTrip(Trip trip) {
		EntityTransaction t = em.getTransaction();
		try {
			
			t.begin();
			em.persist(trip);
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
				return false;
			}
		}
		return true;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Trip findTripById(Long tripId) {
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("SELECT t FROM Trip as t WHERE t.id = :id");
		q.setParameter("id", tripId);
		List<Trip> tripList = null;
		try {
			t.begin();
			tripList = q.setMaxResults(1).getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		if(tripList.isEmpty()) {
			return null;
		}
		else {
			return tripList.get(0);
		}	
	}

}