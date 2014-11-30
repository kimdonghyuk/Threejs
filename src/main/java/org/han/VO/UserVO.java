package org.han.VO;

import java.sql.Date;

public class UserVO {

	private String title;
	private String pw;
	private String email;
	private Date regdate;
	private Integer exp;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Integer getExp() {
		return exp;
	}
	public void setExp(Integer exp) {
		this.exp = exp;
	}
	
	@Override
	public String toString() {
		return "UserVO [title=" + title + ", pw=" + pw + ", email=" + email
				+ ", regdate=" + regdate + ", exp=" + exp + "]";
	}
	
}
