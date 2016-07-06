package com.supinfo.suptrip.dao.jpa;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.supinfo.suptrip.dao.UserDao;
import com.supinfo.suptrip.entity.User;
import com.supinfo.suptrip.util.Encryption;

public class JpaUserDao implements UserDao{
	private EntityManager em;
	public JpaUserDao(EntityManagerFactory emf) {
		em = emf.createEntityManager();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllUsers() {
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select u from User as u");
		List<User> userList = null;
		try {
			t.begin();
			userList = q.getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		return userList;
	}

	@Override
	@SuppressWarnings("unchecked")
	public User findUserByEmail(String email){
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select u from User as u where u.email = :email");
		q.setParameter("email", email);
		List<User> userList = null;
		try {
			t.begin();
			userList = q.setMaxResults(1).getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		if(userList.isEmpty()){
			return null;
		}
		else{
			return userList.get(0);
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public User findUserByIdbooster(String Idbooster){
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select u from User as u where u.idbooster = :idbooster");
		q.setParameter("idbooster", Idbooster);
		List<User> userList = null;
		try {
			t.begin();
			userList = q.setMaxResults(1).getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		if(userList.isEmpty()){
			return null;
		}
		else{
			return userList.get(0);
		}
	}
	@Override
	public boolean addUser(User u) {
		EntityTransaction t = em.getTransaction();
		try {
			
			t.begin();
			em.persist(u);
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
				return false;
			}
		}
		return true;
	}
	@SuppressWarnings("unused")
	@Override
	public User checkUserExist(String idBooster, String Password) {
		
		EntityTransaction t = em.getTransaction();
		String id = idBooster;
		
		Query query  = em.createQuery("SELECT u FROM User AS u WHERE u.idbooster = :id");
		query.setParameter("id", id);
		
		if(query.getResultList().size()>0){
			User user = (User)query.getSingleResult();
			String salt = user.getSalt();
			String generatePassword = Encryption.getSecurePassword(Password, salt);
			
			if(generatePassword.equals(user.getPassword())){
				return user;
			}else{
				return null;
			}	
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	@Override
	public boolean updateUserProfile(User u) {
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("SELECT u FROM User as u WHERE u.idbooster = :idbooster");
		q.setParameter("idbooster", u.getIdbooster());
		
		List<User> userList = null;
		try {
			t.begin();
			userList = q.setMaxResults(1).getResultList();
			
			if(userList.isEmpty()) {
				return false;
			}
			else {
				User user = userList.get(0);
				user.setFirstName(u.getFirstName());
				user.setLastName(u.getLastName());
				user.setEmail(u.getEmail());
				user.setCampus(u.getCampus());
				user.setPassword(u.getPassword());
			}
			
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
				return false;
			}
		}
		return true;
	}
}
