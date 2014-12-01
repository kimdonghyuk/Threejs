package org.han.vo;

import java.sql.Date;

import org.springframework.stereotype.Service;

@Service
public class UserVO {

	private String userid;
	private String pw;
	private String email;
	private Date regdate;
	private Integer exp;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
		return "UserVO [userid=" + userid + ", pw=" + pw + ", email=" + email
				+ ", regdate=" + regdate + ", exp=" + exp + "]";
	}
	
	
}
