package com.supinfo.suptrip.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.supinfo.suptrip.dao.CampusDao;
import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.dao.TripDao;
import com.supinfo.suptrip.entity.Campus;
import com.supinfo.suptrip.entity.Trip;


public class AddServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	//for add all trips and campus to database, just run at one time.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CampusDao cd = DaoFactory.createCampusDao();
		String[] campus = {"Beijing", "Bordeaux", "Bruxelles", "Caen", "Casablanca", "Clermont-Ferrand", "Grenoble", "Guadeloupe", "Île-Maurice", "Lille", "Londres", "Luxembourg", "Lyon", "Marseille", "Martinique", "Metz", "Montpellier", "Montreal", "Nantes", "Nice", "Orléans", "Paris", "Rabat", "Reims", "Rennes", "Réunion", "Rio de Janeiro", "Rome", "Sénégal", "Strasbourg", "Suisse", "Tianjin", "Toulouse", "Tours", "Trapani", "Troyes", "Valenciennes", "Zhenjiang"};
		for (String item : campus) {
			Campus c = new Campus();
			c.setCampusName(item);
			cd.addCampus(c);
		}
		List<Campus> campusList = cd.findAllCampus();
		TripDao td = DaoFactory.createTripDao();
		for(int i=0; i<campusList.size(); i++){
			for(int j=i+1; j<campusList.size(); j++){
				Trip trip1 = new Trip();
				trip1.setFee(111.00F);
				trip1.setDepartureCampus(campusList.get(i));
				trip1.setDestinationCampus(campusList.get(j));
				Trip trip2 = new Trip();
				trip2.setFee(111.00F);
				trip2.setDepartureCampus(campusList.get(j));
				trip2.setDestinationCampus(campusList.get(i));
				td.addTrip(trip1);
				td.addTrip(trip2);
			}
		}
	}
}
