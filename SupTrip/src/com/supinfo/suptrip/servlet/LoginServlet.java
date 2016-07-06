package com.supinfo.suptrip.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.supinfo.suptrip.dao.DaoFactory;
import com.supinfo.suptrip.dao.UserDao;
import com.supinfo.suptrip.entity.User;
import com.supinfo.suptrip.util.Check;
import com.supinfo.suptrip.util.Encryption;


@WebServlet(urlPatterns="/login")
public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private UserDao user;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getSession().getAttribute("idbooster") != null){
			resp.sendRedirect("/SupTrip");
		}
		else{
			req.setAttribute("message", "");
			RequestDispatcher rq = req.getRequestDispatcher("./login.jsp");
			rq.forward(req, resp);	
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String message = null;
		user = DaoFactory.createUserDao();
		
		String idBooster = req.getParameter("idbooster");
		String password = req.getParameter("password");
		User newUser =  user.checkUserExist(idBooster, password);
		
		HttpSession session = req.getSession();
		
		if(!Check.isValidIdbooster(req.getParameter("idbooster"))){
			message = "Th idbooster must be digit and contain 6 numbers.";
		}
		else if(newUser!=null){
			
			session.setAttribute("idbooster", newUser.getIdbooster());
			session.setAttribute("password", newUser.getPassword());
			session.setAttribute("email", newUser.getEmail());
			session.setAttribute("firstname", newUser.getFirstName());
			session.setAttribute("lastname", newUser.getLastName());
			session.setAttribute("campus_id", newUser.getCampus().getId());
			String salt = Encryption.generateSalt();
			String newPassword = Encryption.getSecurePassword(password, salt);
			newUser.setPassword(newPassword);
			newUser.setSalt(salt);
			user.updateUserProfile(newUser);
			
			resp.sendRedirect("./home");	
			return;
		}else{
			
			message = "Wrong Password or Wrong idBooster!";
		}
		req.setAttribute("message",message);
		RequestDispatcher rq = req.getRequestDispatcher("./login.jsp");
		rq.forward(req, resp);
	}
	
	
}
