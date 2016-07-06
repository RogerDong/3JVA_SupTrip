package com.supinfo.suptrip.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/auth/logout")
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
	
		session.removeAttribute("idbooster");
		session.removeAttribute("password");
		session.removeAttribute("email");
		session.removeAttribute("firstname");
		session.removeAttribute("lastname");
		session.removeAttribute("campus_id");
		
		session.removeAttribute("departure");
		session.removeAttribute("destination");
		
		session.invalidate();
		resp.sendRedirect("./login");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		this.doGet(req, resp);
	}
	

}
