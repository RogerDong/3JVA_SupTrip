package com.supinfo.suptrip.rest;


import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.dao.TripDao;
import com.supinfo.suptrip.entity.Trip;
//API for getting Json data
@Path("/trips")
public class TripResource {
	@GET
	@Path("/getsalltripsjson")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Trip> listTripsInJson(){
		TripDao td = DaoFactory.createTripDao();
		return td.getAllTrips();	
	}
	
	@GET
	@Path("/searchtripbycampus/{campus}/{location}")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Trip> searchTripByCampus(@PathParam("campus") String campusName, @PathParam("location") String location){
		TripDao td = DaoFactory.createTripDao();
		List<Trip> tripList = null;
		if(location.equals("destination")){
			tripList = td.findTripsByDestination(campusName);
		}
		else if(location.equals("departure")){
			tripList = td.findTripsByDeparture(campusName);
		}
		else if(location.equals("both")){
			tripList = td.findTripsByDestination(campusName);
			tripList.addAll(td.findTripsByDeparture(campusName));
		}
		return tripList;
	}
}
