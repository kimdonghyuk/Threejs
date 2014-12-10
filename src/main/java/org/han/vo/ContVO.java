package org.han.vo;

import java.sql.Date;

import org.springframework.stereotype.Service;

@Service
public class ContVO {

	private Integer cno;
	private String title;
	private String cont;
	private String contfile;
	private Date regdate;
	private String cate;
	private Integer fno;
	public Integer getCno() {
		return cno;
	}
	public void setCno(Integer cno) {
		this.cno = cno;
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
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	@Override
	public String toString() {
		return "ContVO [cno=" + cno + ", title=" + title
				+ ", cont=" + cont + ", contfile=" + contfile + ", regdate="
				+ regdate + ", cate=" + cate + ", fno=" + fno + "]";
	}
	
}
