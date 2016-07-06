package com.supinfo.suptrip.dao;


import com.supinfo.suptrip.dao.jpa.JpaBagDao;
import com.supinfo.suptrip.dao.jpa.JpaCampusDao;
import com.supinfo.suptrip.dao.jpa.JpaTripDao;
import com.supinfo.suptrip.dao.jpa.JpaUserDao;
import com.supinfo.suptrip.util.PersistenceManager;



public class DaoFactory {
	private DaoFactory(){}
	public static UserDao createUserDao()
	{
		return new JpaUserDao(PersistenceManager.getEntityManagerFactory());
	}
	public static CampusDao createCampusDao()
	{
		return new JpaCampusDao(PersistenceManager.getEntityManagerFactory());
	}
	public static TripDao createTripDao()
	{
		return new JpaTripDao(PersistenceManager.getEntityManagerFactory());
	}
	public static BagDao createBagDao()
	{
		return new JpaBagDao(PersistenceManager.getEntityManagerFactory());
	}
	
}
