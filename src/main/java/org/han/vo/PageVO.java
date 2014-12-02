package org.han.vo;

import java.sql.Date;

import org.springframework.stereotype.Service;


public class PageVO {
	
	private Integer pno;
	private Integer bno;
	private String userid;
	private String title;
	private String cont;
	private String contfile;
	private Date regdate;
	private Integer cnt;
	private Integer page;
	
	
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getCnt(){
		return cnt;
	}	
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}

	public Integer getPno() {
		return pno;
	}
	public void setPno(Integer pno) {
		this.pno = pno;
	}
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
	
	@Override
	public String toString() {
		return "PageVO [pno=" + pno + ", bno=" + bno + ", userid=" + userid
				+ ", title=" + title + ", cont=" + cont + ", contfile="
				+ contfile + ", regdate=" + regdate + ", cnt=" + cnt
				+ ", page=" + page + "]";
	}
	

	

}
