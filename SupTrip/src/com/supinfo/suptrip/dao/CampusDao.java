package com.supinfo.suptrip.dao;

import java.util.List;

import com.supinfo.suptrip.entity.Campus;

public interface CampusDao {
	public List<Campus> findAllCampus();
	public Campus findCampusById(long id);
	public Campus findCampusByCampusName(String campusName);
	public boolean addCampus(Campus c);
}
