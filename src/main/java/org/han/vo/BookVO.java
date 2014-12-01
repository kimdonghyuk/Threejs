package org.han.vo;

import java.sql.Date;

public class BookVO {
	
	private Integer bno;
	private String userid;
	private String title;
	private String contfile;
	private Date regdate;
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
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
	@Override
	public String toString() {
		return "BookVO [bno=" + bno + ", userid=" + userid + ", title=" + title
				+ ", contfile=" + contfile + ", regdate=" + regdate + "]";
	}
	
}
