package org.han.util;

public class PageMaker {
	
	private int page;				// 현재 페이지
	private int cnt;				// 현재 페이지를 구성하는데 필요한 데이터 수
	private int lineCount;			// 화면 당 페이지 갯수 = 5
	private int perPage;			// 페이지당 글 갯수 = 3
	private int first;				// 화면 첫번째 페이지 = 1
	private int last;				// 화면 마지막 페이지 = 5
	private String userid;
	
	public static int getNumber(String str) {
		try {
			return Integer.parseInt(str);
		} catch (Exception e) {
			return 1;
		}
	}
	
	public PageMaker() {
		this(1);
	}

	public PageMaker(int page) {
		this(page, 0);
	}

	public PageMaker(String pageStr) {
		this(getNumber(pageStr), 0);
	}

	public PageMaker(int page, int cnt) {
		this(page, cnt, 5, 3);
	}

	public PageMaker(int page, int cnt, int lineCount, int perPage) {
		super();
		this.page = page;
		this.cnt = cnt;
		this.lineCount = lineCount;
		this.perPage = perPage;
		this.first = 1;
		this.last = 5;		
	}
	
	
	
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getLineCount() {
		return lineCount;
	}
	public void setLineCount(int lineCount) {
		this.lineCount = lineCount;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	public int getFirst() {
		return ((int)((Math.floor((page - 1) / (double) lineCount)) * lineCount) + 1);
	}
	public void setFirst(int first) {
		this.first = first;
	}
	public int getLast() {
		return (int)((Math.floor((page - 1) / (double) lineCount) * lineCount) + 5);
	}
	public void setLast(int last) {
		this.last = last;
	}

	@Override
	public String toString() {
		return "PageMaker [page=" + page + ", cnt=" + cnt + ", lineCount="
				+ lineCount + ", perPage=" + perPage + ", first=" + first
				+ ", last=" + last + ", userid=" + userid + "]";
	}

}
