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

import com.supinfo.suptrip.dao.BagDao;
import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.entity.Bag;

@WebServlet(urlPatterns="/auth/bag")

public class BagServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	private BagDao bag;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		bag = DaoFactory.createBagDao();
		
		HttpSession session = req.getSession();
		String userId = session.getAttribute("idbooster").toString();
		
		List<Bag>listBags = bag.findBagByID(userId);
		
		session.setAttribute("listBags", listBags);
		
		RequestDispatcher rd = req.getRequestDispatcher("/auth/bag.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		bag = DaoFactory.createBagDao();
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		List<Bag> deleteBags = (List<Bag>) session.getAttribute("confirmBags");
		for(Bag dBag : deleteBags){
			bag.emptyBag(dBag.getId());
		}
		resp.sendRedirect("/SupTrip/home");
	}

}