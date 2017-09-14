package com.phgs.bean;

import java.io.Serializable;

public class News implements Serializable{

	private int newsID;
	private String title;
	private String content;
	private String writerDate;
	public News() {
		super();
	}
	public News( String title, String content, String writerDate) {
		super();
		this.title = title;
		this.content = content;
		this.writerDate = writerDate;
	}
	public int getNewsID() {
		return newsID;
	}
	public void setNewsID(int newsID) {
		this.newsID = newsID;
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
	public String getWriterDate() {
		return writerDate;
	}
	public void setWriterDate(String writerDate) {
		this.writerDate = writerDate;
	}
	
	
}
