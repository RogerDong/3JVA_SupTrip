package com.supinfo.suptrip.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.supinfo.suptrip.dao.BagDao;
import com.supinfo.suptrip.entity.Bag;

public class JpaBagDao implements BagDao{
	private EntityManager em;
	
	public JpaBagDao(EntityManagerFactory emf) {
		em = emf.createEntityManager();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Bag> findBagByID(String userId) {
		EntityTransaction t = em.getTransaction();
		List<Bag>listBags = null;
		try {
			t.begin();
			Query query = em.createQuery("select bag from Bag as bag where bag.user.idbooster=:userId and bag.orderstate =:zero");
			query.setParameter("userId",userId);
			query.setParameter("zero",(long)0);
			listBags = query.getResultList();
			t.commit();
		} finally {
			if (t.isActive())
				
				t.rollback();
			 
		}
		return listBags;
	}
	public void emptyBag(Long bagId){
		EntityTransaction t = em.getTransaction();
		try {
			t.begin();
			Query query = em.createQuery("UPDATE Bag as bag SET bag.orderstate=:ordered where bag.id=:bagId");
			query.setParameter("bagId", bagId);
			query.setParameter("ordered",(long)1);
			query.executeUpdate();
			t.commit();
		} finally {
			if (t.isActive()) 
				
				t.rollback();
			
		}
	}

	@Override
	public boolean addTripToBag(Bag bag) {
		EntityTransaction t = em.getTransaction();
		try {
			t.begin();
			em.persist(bag);
			t.commit();
		} finally {
			if (t.isActive()) {
				t.rollback();
				return false;
			}
		}
		return true;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Bag> findBagHistoryById(String userId) {
		EntityTransaction t = em.getTransaction();
		List<Bag>listBags = null;
		try {
			t.begin();
			Query query = em.createQuery("select bag from Bag as bag where bag.user.idbooster=:userId and bag.orderstate =:zero");
			query.setParameter("userId",userId);
			query.setParameter("zero",(long)1);
			listBags = query.getResultList();
			t.commit();
		} finally {
			if (t.isActive())
				t.rollback();
		}
		return listBags;
	}
	
}
