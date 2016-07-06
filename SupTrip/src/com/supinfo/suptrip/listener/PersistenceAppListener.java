package com.supinfo.suptrip.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.supinfo.suptrip.util.PersistenceManager;

public class PersistenceAppListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		PersistenceManager.closeEntityManagerFactory();
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	
}
