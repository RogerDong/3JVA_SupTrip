package com.supinfo.suptrip.servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/changeOrder")

public class ChangeOrderServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		long id = new Long (req.getParameter("id"));
		System.out.println(id);
		//replace 
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("My-PU");
		EntityManager em = emf.createEntityManager();
		EntityTransaction t = em.getTransaction();
		try {
			t.begin();
			Query query = em.createQuery("update Bag as bag set bag.orderstate = 1 where bag.id = :id");
			query.setParameter("id", id);
			query.executeUpdate();
			t.commit();
		} finally {
			if (t.isActive()) t.rollback();
			em.close();
		}
		resp.sendRedirect("./auth/bag");
	}
	
}
