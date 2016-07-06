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

@WebServlet(urlPatterns="/auth/profile")
public class EditProfileServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String Idbooster = session.getAttribute("idbooster").toString();
		User user = DaoFactory.createUserDao().findUserByIdbooster(Idbooster);
		
		req.setAttribute("user", user);
		Campus yourcampus = user.getCampus();
		req.setAttribute("yourcampus", yourcampus);
		
		List<Campus> campusList = DaoFactory.createCampusDao().findAllCampus();
		req.setAttribute("campusList", campusList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/auth/profile.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDao ud = DaoFactory.createUserDao();
		String message = "";
		HttpSession session = req.getSession();
		String Idbooster = session.getAttribute("idbooster").toString();
		User user = ud.findUserByIdbooster(Idbooster);
		
		
		if(!Check.isVailidName(req.getParameter("firstname"))) {
			message = "The first name is invalid.";
		}
		else if(!Check.isVailidName(req.getParameter("lastname"))) {
			message = "The last name is invalid.";
		}
		else if(!Check.isValidEmail(req.getParameter("email"))) {
			message = "The emial is invalid.";
		}
		else if(ud.findUserByEmail(req.getParameter("email")) != null && ud.findUserByEmail(req.getParameter("email")) != user) {
			message = "This email is already used by other user.";
		}
		if(!Check.isTwoPasswordEqual(req.getParameter("new_password"), req.getParameter("confirm_new_password"))) {
			message = "Password doesn't match the confirmation";
		}
		if(req.getParameter("new_password") != "") {
			if(!Check.isValidPassword(req.getParameter("new_password"))) {
				message = "The password must contain digit, small letter, big letter and special character. And the lenth must be between 7 and 18";
			}
		}
		String newPassword = req.getParameter("new_password");	
		if(!Check.isTwoPasswordEqual(user.getPassword(), Encryption.getSecurePassword(req.getParameter("old_password"), user.getSalt()))) {
			message = "Old password isn't valid";
		}
		else {
			if(newPassword == "") {
				newPassword = user.getPassword();
			}
			else {
				newPassword = Encryption.getSecurePassword(newPassword, user.getSalt());
			}
		}
		
		req.setAttribute("message", message);
		if(message == "") {
			CampusDao cd = DaoFactory.createCampusDao();
			User u = new User();
			u.setIdbooster(Idbooster);
			u.setFirstName(req.getParameter("firstname"));
			u.setLastName(req.getParameter("lastname"));
			u.setEmail(req.getParameter("email"));
			u.setPassword(newPassword);
			u.setCampus(cd.findCampusById(Long.parseLong(req.getParameter("campus"))));			
			ud.updateUserProfile(u);
			session.setAttribute("idbooster", u.getIdbooster());
			session.setAttribute("password", u.getPassword());
			session.setAttribute("email", u.getEmail());
			session.setAttribute("firstname", u.getFirstName());
			session.setAttribute("lastname", u.getLastName());
			session.setAttribute("campus_id", u.getCampus().getId());
		}
		doGet(req, resp);
	}
}
