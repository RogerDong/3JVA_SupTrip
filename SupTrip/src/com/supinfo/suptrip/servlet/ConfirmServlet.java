package com.supinfo.suptrip.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.supinfo.suptrip.entity.Bag;

@WebServlet(urlPatterns="/auth/confirm")

public class ConfirmServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ArrayList<Bag> confirmBags = new ArrayList<Bag>();
		
		HttpSession session = req.getSession();
		
		@SuppressWarnings("unchecked")
		List<Bag> listBags = (List<Bag>) session.getAttribute("listBags");
		for(Bag aBag : listBags){
			
			String checkBoxName = Long.toString(aBag.getId());
			if(req.getParameter(checkBoxName)!=null){
				
				confirmBags.add(aBag);
			}
			
		}
		
		session.setAttribute("confirmBags", confirmBags);
		RequestDispatcher rd = req.getRequestDispatcher("/auth/confirm.jsp");
		rd.forward(req, resp);
		}
	
}
