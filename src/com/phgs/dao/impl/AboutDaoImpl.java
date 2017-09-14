package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanHandler;
import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.About;
import com.phgs.dao.AboutDao;
import com.phgs.util.DBCPUtil;

public class AboutDaoImpl implements AboutDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public void add(About about) {
		db.update("insert into about(title,flag,content) values(?,?,?)",about.getTitle(),about.getFlag(), about.getContent());
	}
	public List<About> findAll() {
		return (List<About>) db.query("select * from about", new BeanListHandler(About.class));
	}
	public void deleteById(int parseInt) {
		db.update("delete from about where aboutID=?", parseInt);
	}
	public About findById(int aboutID) {
		return (About) db.query("select * from about where aboutID=?", new BeanHandler(About.class),aboutID);
	}
	public void update(About about) {
		db.update("update about set title=?,flag=?,content=? where aboutID=?", about.getTitle(),about.getFlag(),about.getContent(),about.getAboutID());
	}
	public About findByFlag(String flag) {
		return (About) db.query("select * from about where flag=?", new BeanHandler(About.class), flag);
	}
	public List<About> findByFlags(String string) {
		return (List<About>) db.query("select * from about where flag=?", new BeanListHandler(About.class), string);
	}

}
