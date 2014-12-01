package org.han.vo;

import java.sql.Date;

public class DiaryVO {
	
	private Integer dno;
	private String userid;
	private String title;
	private String cont;
	private String contfile;
	private Date regdate;
	private String tag;
	
	public Integer getDno() {
		return dno;
	}
	public void setDno(Integer dno) {
		this.dno = dno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCont() {
		return cont;
	}
	public void setCont(String cont) {
		this.cont = cont;
	}
	public String getContfile() {
		return contfile;
	}
	public void setContfile(String contfile) {
		this.contfile = contfile;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	@Override
	public String toString() {
		return "DiaryVO [dno=" + dno + ", userid=" + userid + ", title="
				+ title + ", cont=" + cont + ", contfile=" + contfile
				+ ", regdate=" + regdate + ", tag=" + tag + "]";
	}

}
