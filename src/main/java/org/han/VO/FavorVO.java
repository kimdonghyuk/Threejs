package org.han.vo;

public class FavorVO {

	private Integer fno;
	private String title;
	private Integer cno;
	
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getCno() {
		return cno;
	}
	public void setCno(Integer cno) {
		this.cno = cno;
	}
	
	@Override
	public String toString() {
		return "FavorVO [fno=" + fno + ", title=" + title + ", cno=" + cno
				+ "]";
	}
	
}
