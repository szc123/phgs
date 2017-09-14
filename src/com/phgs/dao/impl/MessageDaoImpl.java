package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanHandler;
import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.Message;
import com.phgs.dao.MessageDao;
import com.phgs.util.DBCPUtil;

public class MessageDaoImpl implements MessageDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public int findAllMessageNum() {
		 List list=(List) db.query("select * from message", new BeanListHandler(Message.class));
		 return list.size();
	}
	public List findPageMessage(int startIndex, int pageSize) {
		return (List) db.query("select * from message limit ? , ?", new BeanListHandler(Message.class), startIndex,pageSize);
	}
	public void deleteById(int id) {
		db.update("delete from message where messageID=?", id);
	}
	public Message findById(int id) {
		return (Message) db.query("select * from message where messageID=?", new BeanHandler(Message.class), id);
	}
	public void updateCount(int messageID) {
		db.update("update message set count=count+1 where messageID=?", messageID);
	}
	public void add(Message m) {
		db.update("insert into message(title,writer,content,writerDate,count) values(?,?,?,?,?)", m.getTitle(),m.getWriter(),m.getContent(),m.getWriterDate(),m.getCount());
	}
}
