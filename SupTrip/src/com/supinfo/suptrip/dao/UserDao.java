package com.supinfo.suptrip.dao;

import java.util.List;

import com.supinfo.suptrip.entity.User;

public interface UserDao {
	public User findUserByIdbooster(String Idbooster);
	public boolean addUser(User u);
	public User findUserByEmail(String email);
	public User checkUserExist(String idBooster, String Password);
	public List<User> getAllUsers();
	public boolean updateUserProfile(User u);
}
