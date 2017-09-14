package com.phgs.bean;
/**
create table about(
aboutID int primary key auto_increment,
title varchar(200),
content text
);
 */
public class About {
	private int aboutID;
	private String title;
	private String content;
	private String flag;
	
	public int getAboutID() {
		return aboutID;
	}
	public void setAboutID(int aboutID) {
		this.aboutID = aboutID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	
}
