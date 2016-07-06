package com.supinfo.suptrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.supinfo.suptrip.dao.CampusDao;
import com.supinfo.suptrip.entity.Campus;

public class JpaCampusDao implements CampusDao{
	private EntityManager em;
	public JpaCampusDao(EntityManagerFactory emf) {
		em = emf.createEntityManager();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Campus findCampusByCampusName(String campusName) {
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select c from Campus as c where c.campusName = :campusName");
		q.setParameter("campusName", campusName);
		List<Campus> campusList = null;
		try {
			t.begin();
			campusList = q.setMaxResults(1).getResultList();
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		if(campusList.isEmpty()){
			return null;
		}
		else{
			return campusList.get(0);
		}
	}

	@SuppressWarnings("unchecked")
	public List<Campus> findAllCampus()
	{
		EntityTransaction t = em.getTransaction();
		Query q = em.createQuery("select c from Campus as c");
		List<Campus> campusList = null;
		try{
			t.begin();
			campusList = q.getResultList();
			t.commit();
		}
		finally{
			if(t.isActive())
			{
				t.rollback();
			}
		}
		return campusList;
	}

	@Override
	public Campus findCampusById(long id) {
		EntityTransaction t = em.getTransaction();
		Campus c = null;
		try {
			t.begin();
			c = em.find(Campus.class, id);
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
			}
		}
		return c;
	}

	@Override
	public boolean addCampus(Campus c) {
		EntityTransaction t = em.getTransaction();
		try {
			
			t.begin();
			em.persist(c);
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
