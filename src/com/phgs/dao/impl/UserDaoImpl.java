package com.phgs.dao.impl;

import com.bw.dbassist.BeanHandler;
import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.User;
import com.phgs.dao.UserDao;
import com.phgs.util.DBCPUtil;

public class UserDaoImpl implements UserDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public void delete(int id) {
		db.update("delete from users where userID=?", id);
	}
	public Object findAll() {
		return db.query("select * from users", new BeanListHandler(User.class));
	}
	public void add(User u) {
		db.update("insert into users(userName,password,status) values(?,?,?)", u.getUserName(),u.getPassword(),u.getStatus());
	}
	public void update(User u) {
		db.update("update users set userName=?,password=? where userID=?", u.getUserName(),u.getPassword(),u.getUserID());
	}
	public User findById(int id){
		return (User) db.query("select * from Users where userID=?", new BeanHandler(User.class), id);
	}
	public User findByNameAndPwd(String userName, String password, int status) {
		return (User) db.query("select * from Users where userName=? and password=? and status=?", new BeanHandler(User.class), userName,password,status);
	}
	public User findEqualName(String name) {
		return (User) db.query("select * from Users where userName=?", new BeanHandler(User.class), name);
	}
	public User findUsers(String userName, String password) {
		return (User) db.query("select * from Users where userName=? and password=?", new BeanHandler(User.class), userName,password);
	}
}
