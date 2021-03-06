package com.supinfo.suptrip.rest;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

@ApplicationPath("/rest")
public class RestService extends Application{

	public RestService(){}

	@Override
	public Set<Class<?>> getClasses()
	{
		final Set<Class<?>> returnValue = new HashSet<Class<?>>( );
		returnValue.add( TripResource.class );
		return returnValue;
	}
	
}
