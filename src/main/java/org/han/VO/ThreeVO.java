package org.han.VO;

import java.util.Date;

public class ThreeVO {
	
	private Integer tno;
	private String title;
	private String userid;
	private String contfile;
	private Date regdate;
	private Integer cnt;
	
	
	
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public Integer getTno() {
		return tno;
	}
	public void setTno(Integer tno) {
		this.tno = tno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
		return "ThreeVO [tno=" + tno + ", title=" + title + ", userid="
				+ userid + ", contfile=" + contfile + ", regdate=" + regdate
				+ ", cnt=" + cnt + "]";
	}
	

	
	
	
	

}
