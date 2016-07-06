package com.supinfo.suptrip.dao;

import java.util.List;

import com.supinfo.suptrip.entity.Bag;



public interface BagDao {
	public List<Bag> findBagByID(String userId);
	public void emptyBag(Long bagId);
	public boolean addTripToBag(Bag bag);
	public List<Bag> findBagHistoryById(String userId);
}
