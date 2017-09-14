package com.phgs.dao;

import java.util.List;

import com.phgs.bean.News;

public interface NewsDao {


	void add(News n);

	void deleteById(int id);

	News findById(int id);

	void update(News n);

	int findAllNewsNum();

	List findPageNews(int startIndex, int pageSize);

	List<News> findIndexNews();

}
