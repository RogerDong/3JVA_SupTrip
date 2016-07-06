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

import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.entity.Bag;

@WebServlet(urlPatterns="/auth/history")
public class BagHistoryServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String userId = session.getAttribute("idbooster").toString();
		
		List<Bag>listBags = DaoFactory.createBagDao().findBagHistoryById(userId);
		
		session.setAttribute("listBags", listBags);
		
		RequestDispatcher rd = req.getRequestDispatcher("/auth/history.jsp");
		rd.forward(req, resp);
	}
	
}
