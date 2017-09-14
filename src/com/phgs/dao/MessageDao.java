package com.phgs.dao;

import java.util.List;

import com.phgs.bean.Message;

public interface MessageDao {

	int findAllMessageNum();

	List findPageMessage(int startIndex, int pageSize);

	void deleteById(int id);

	Message findById(int id);

	void updateCount(int messageID);

	void add(Message m);

}
