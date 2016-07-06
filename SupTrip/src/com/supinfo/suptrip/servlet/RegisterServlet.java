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
import com.supinfo.suptrip.dao.UserDao;
import com.supinfo.suptrip.entity.Campus;
import com.supinfo.suptrip.entity.User;
import com.supinfo.suptrip.util.Check;
import com.supinfo.suptrip.util.Encryption;
@WebServlet(urlPatterns="/register")
public class RegisterServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		if(req.getSession().getAttribute("idbooster") != null){
			resp.sendRedirect("/SupTrip");
		}
		else{
			CampusDao cd = DaoFactory.createCampusDao();
			List<Campus> campusList = cd.findAllCampus();
			req.setAttribute("campusList", campusList);
			req.setAttribute("message", "");
			RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
			rd.forward(req, resp);	
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		UserDao ud = DaoFactory.createUserDao();	
		String message = ""; 
		if(!Check.isValidIdbooster(req.getParameter("idbooster"))){
			message = "Th idbooster must be digit and contain 6 numbers.";
		}
		else if(ud.findUserByIdbooster(req.getParameter("idbooster")) != null){
			message = "The idbooster already exists.";
		}
		else if(!Check.isVailidName(req.getParameter("firstname"))){
			message = "The first name is invalid.";
		}
		else if(!Check.isVailidName(req.getParameter("lastname"))){
			message = "The last name is invalid.";
		}
		else if(!Check.isValidEmail(req.getParameter("email"))){
			message = "The emial is invalid.";
		}
		else if(ud.findUserByEmail(req.getParameter("email")) != null){
			message = "This email is already used by other user.";
		}
		else if(!Check.isValidPassword(req.getParameter("password"))){
			message = "The password must contain digit, small letter, big letter and special character. And the lenth must be between 7 and 18.";
		}
		else if(!Check.isTwoPasswordEqual(req.getParameter("password"), req.getParameter("password2")))
		{
			message = "The two passwords do not match.";
		}
		req.setAttribute("message", message);
		if(message == ""){
			User u = new User();
			CampusDao cd = DaoFactory.createCampusDao();
			u.setIdbooster(req.getParameter("idbooster"));
			u.setFirstName(req.getParameter("firstname"));
			u.setLastName(req.getParameter("lastname"));
			u.setEmail(req.getParameter("email"));
			u.setCampus(cd.findCampusById(Long.parseLong(req.getParameter("campus"))));
			String salt = Encryption.generateSalt();
			u.setSalt(salt);
			u.setPassword(Encryption.getSecurePassword(req.getParameter("password"), salt));
			ud.addUser(u);
			HttpSession session = req.getSession();
			session.setAttribute("idbooster", u.getIdbooster());
			session.setAttribute("password", u.getPassword());
			session.setAttribute("email", u.getEmail());
			session.setAttribute("firstname", u.getFirstName());
			session.setAttribute("lastname", u.getLastName());
			session.setAttribute("campus_id", u.getCampus().getId());
			resp.sendRedirect("/SupTrip");
		}
		else{
			CampusDao cd = DaoFactory.createCampusDao();
			List<Campus> campusList = cd.findAllCampus();
			req.setAttribute("campusList", campusList);
			RequestDispatcher rd = req.getRequestDispatcher("register.jsp");
			rd.forward(req, resp);
		}
	}
	
}
