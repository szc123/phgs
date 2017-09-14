package com.phgs.dao;

import com.phgs.bean.User;

public interface UserDao {

	void delete(int i);

	Object findAll();

	void add(User u);

	void update(User u);

	User findByNameAndPwd(String userName, String password, int status);

	User findEqualName(String name);
	
	User findUsers(String userName,String password);

}
