package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanHandler;
import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.News;
import com.phgs.dao.NewsDao;
import com.phgs.util.DBCPUtil;

public class NewsDaoImpl implements NewsDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public void add(News n) {
		db.update("insert into news(title,content,writerDate) values(?,?,?)", n.getTitle(),n.getContent(),n.getWriterDate());
	}
	public void deleteById(int id) {
		db.update("delete from news where newsID=?", id);
	}
	public News findById(int id) {
		return (News) db.query("select * from news where newsID=?", new BeanHandler(News.class), id);
	}
	public void update(News n) {
		db.update("update news set title=?,content=?,writerDate=? where newsID=?", n.getTitle(),n.getContent(),n.getWriterDate(),n.getNewsID());
	}
	public int findAllNewsNum() {
		List list=(List) db.query("select * from news", new BeanListHandler(News.class));
		return list.size();
	}
	public List findPageNews(int startIndex, int pageSize) {
		return (List) db.query("select *  from news order by writerDate desc limit ?, ?", new BeanListHandler(News.class),startIndex, pageSize);
	}
	public List<News> findIndexNews() {
		return (List<News>) db.query("select * from news order by writerDate desc limit 0,7" ,new BeanListHandler(News.class));
	}
	
}
