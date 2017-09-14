package com.phgs.dao;

import java.util.List;

import com.phgs.bean.About;

public interface AboutDao {

	void add(About about);

	List<About> findAll();

	void deleteById(int parseInt);

	About findById(int aboutID);

	void update(About about);

	About findByFlag(String flag);

	List<About> findByFlags(String string);

}
