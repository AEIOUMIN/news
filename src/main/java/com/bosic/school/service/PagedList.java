package com.bosic.school.service;

import java.util.List;

public class PagedList<T> {
	//当前页
	private int index;
	//总页数
	private int pages;
	//总记录数
	private long total;
	//当前页数据
	private List<T> rows;
	public PagedList(int pageIndex, int pageSize, long totalCount, List<T> rows) {
		this.index = pageIndex;
		this.pages = (int)((totalCount-1)/pageSize+1);
		this.total = totalCount;
		this.rows = rows;
		this.index=Math.max(this.index, 1);
		this.index=Math.min(this.index, pages);
	}
	public int getIndex() {
		return index;
	}
	public int getPages() {
		return pages;
	}
	public long getTotal() {
		return total;
	}
	public List<T> getRows() {
		return rows;
	}
	public int getFirst(){		
		return 1;
	}
	public int getPrev(){
		return Math.max(this.index-1, 1);
		
	}
	public int getNext(){
		return Math.min(this.index+1, pages);
		
	}
	public int getLast(){
		return pages;
		
	}
}
