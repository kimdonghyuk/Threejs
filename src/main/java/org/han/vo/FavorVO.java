package org.han.vo;

import java.sql.Date;

import org.springframework.stereotype.Service;

@Service
public class FavorVO {

	private Integer cno;
	private Integer sno;
	private String title;
	private String cont;
	private String contfile;
	private String cate;
	private String userid;
	private Integer fno;

	public Integer getCno() {
		return cno;
	}

	public void setCno(Integer cno) {
		this.cno = cno;
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

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Integer getFno() {
		return fno;
	}

	public void setFno(Integer fno) {
		this.fno = fno;
	}

	@Override
	public String toString() {
		return "FavorVO [cno=" + cno + ", sno=" + sno + ", title=" + title
				+ ", cont=" + cont + ", contfile=" + contfile + ", cate="
				+ cate + ", userid=" + userid + ", fno=" + fno + "]";
	}
}
