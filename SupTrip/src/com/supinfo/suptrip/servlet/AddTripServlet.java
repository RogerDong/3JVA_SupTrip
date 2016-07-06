package com.supinfo.suptrip.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.entity.Bag;
import com.supinfo.suptrip.entity.Trip;
import com.supinfo.suptrip.entity.User;

@WebServlet(urlPatterns="/auth/addTrip")
public class AddTripServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String Idbooster = session.getAttribute("idbooster").toString();
		User user = DaoFactory.createUserDao().findUserByIdbooster(Idbooster);
		Long tripId = Long.parseLong(req.getParameter("trip_id"));
		Trip trip = DaoFactory.createTripDao().findTripById(tripId);
		
		Bag bag = new Bag();
		bag.setOrderstate(0);
		bag.setUser(user);
		bag.setTrip(trip);
		
		DaoFactory.createBagDao().addTripToBag(bag);
		
		resp.sendRedirect("/SupTrip/home");
	}
}
