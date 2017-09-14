package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.Revert;
import com.phgs.dao.RevertDao;
import com.phgs.util.DBCPUtil;

public class RevertDaoImpl implements RevertDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public List findPageRevertByMegId(int startIndex, int pageSize, int id) {
		return (List) db.query("select * from revert where messageID=? limit ? , ?", new BeanListHandler(Revert.class), id ,startIndex, pageSize);
	}
	public int findMsgRevertNum(int id) {
		List list=(List) db.query("select * from  revert where messageID=?", new BeanListHandler(Revert.class), id);
		return list.size();
	}
	public void deleteById(int id) {
		db.update("delete from revert where revertID=?", id);
	}
	public void add(Revert r) {
		db.update("insert into revert(messageID,writer,content,writerDate) values (?,?,?,?)", r.getMessageID(),r.getWriter(),r.getContent(),r.getWriterDate());
	}
}
