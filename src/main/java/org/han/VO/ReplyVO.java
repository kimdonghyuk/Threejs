package org.han.VO;

import java.sql.Date;

public class ReplyVO {

	private Integer dno;
	private Integer rno;
	private String userid;
	private String reply;
	private Date regdate;
	
	public Integer getDno() {
		return dno;
	}
	public void setDno(Integer dno) {
		this.dno = dno;
	}
	public Integer getRno() {
		return rno;
	}
	public void setRno(Integer rno) {
		this.rno = rno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "ReplyVO [dno=" + dno + ", rno=" + rno + ", userid=" + userid
				+ ", reply=" + reply + ", regdate=" + regdate + "]";
	}
	
}
