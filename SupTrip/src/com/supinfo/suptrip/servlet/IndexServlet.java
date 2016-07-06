package com.supinfo.suptrip.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.supinfo.suptrip.dao.CampusDao;
import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.dao.TripDao;
import com.supinfo.suptrip.dao.UserDao;
import com.supinfo.suptrip.entity.Trip;

@WebServlet(urlPatterns="/home")
public class IndexServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		if(req.getSession().getAttribute("idbooster") == null){
			UserDao ud = DaoFactory.createUserDao();
			req.setAttribute("userNum", ud.getAllUsers().size());
			TripDao td = DaoFactory.createTripDao();
			req.setAttribute("tripNum", td.getAllTrips().size());
			CampusDao cd = DaoFactory.createCampusDao();
			req.setAttribute("campusNum", cd.findAllCampus().size());
		}
		else if(session.getAttribute("departure") != null || session.getAttribute("destination") != null) {
			TripDao td = DaoFactory.createTripDao();
			List<Trip> tripList = null;
			String departure = session.getAttribute("departure").toString();
			String destination = session.getAttribute("destination").toString();
			if(!departure.isEmpty() && !destination.isEmpty()) {
				tripList = td.findTripsByDepartureAndDestination(departure, destination);
			}
			else if(!departure.isEmpty()) {
				tripList = td.findTripsByDeparture(departure);
			}
			else {
				tripList = td.findTripsByDestination(destination);
			}
			req.setAttribute("tripList", tripList);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		rd.forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Trip> tripList = null;
		TripDao td = DaoFactory.createTripDao();
		
		if(!req.getParameter("departure").isEmpty() && !req.getParameter("destination").isEmpty()){
			tripList = td.findTripsByDepartureAndDestination(req.getParameter("departure"), req.getParameter("destination"));
		}
		else if(!req.getParameter("departure").isEmpty()){
			tripList = td.findTripsByDeparture(req.getParameter("departure"));
		}
		else if(!req.getParameter("destination").isEmpty()){
			tripList = td.findTripsByDestination(req.getParameter("destination"));
		}
		HttpSession session = req.getSession();
		session.setAttribute("departure", req.getParameter("departure"));
		session.setAttribute("destination", req.getParameter("destination"));
		
		req.setAttribute("tripList", tripList);
		RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
		rd.forward(req, resp);
	}
}
