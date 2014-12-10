package org.han.vo;

import java.sql.Date;

public class SearchVO {

	private Integer sno;
	private String title;
	private String cont;
	private String contfile;
	private Date regdate;
	private String root;
	private Integer cnt;
	
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public Integer getSno() {
		return sno;
	}
	public void setSno(Integer sno) {
		this.sno = sno;
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
	public String getRoot() {
		return root;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	
	@Override
	public String toString() {
		return "SearchVO [sno=" + sno + ", title=" + title + ", cont=" + cont
				+ ", contfile=" + contfile + ", regdate=" + regdate + ", root="
				+ root + ", cnt=" + cnt + "]";
	}
	
}
