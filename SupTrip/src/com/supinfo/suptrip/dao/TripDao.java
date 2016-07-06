package com.supinfo.suptrip.dao;

import java.util.List;

import com.supinfo.suptrip.entity.Trip;

public interface TripDao {
	public List<Trip> getAllTrips();
	public List<Trip> findTripsByDestination(String destination);
	public List<Trip> findTripsByDeparture(String departure);
	public List<Trip> findTripsByDepartureAndDestination(String departure, String destination);
	public boolean addTrip(Trip t);
	public Trip findTripById(Long tripId);
}
