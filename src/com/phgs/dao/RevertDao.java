package com.phgs.dao;

import java.util.List;

import com.phgs.bean.Revert;

public interface RevertDao {

	int findMsgRevertNum(int id);

	List findPageRevertByMegId(int startIndex, int pageSize, int id);

	void deleteById(int id);

	void add(Revert r);

}
