package com.user.DAO;

import java.util.List;

import com.user.entity.User;

public interface UserDAO {
	
	public void adduser(User user);
	public List<User> getList();
	public void deleteuser(String username);
	public User getUser(String id);
	public void updateUser(User user);
	

}
