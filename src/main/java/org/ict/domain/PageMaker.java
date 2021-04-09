package org.ict.domain;

import lombok.Data;

@Data
public class PageMaker {
	
	private int totalCount;
	private int startPage;
	private int endPage;
	private int displayPageNum;
	private boolean prev;
	private boolean next;
	private Criteria cri;
	
	public void calcData() {
		this.displayPageNum = 5;
		this.endPage = (int)(Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
		this.startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)cri.getNumber()));
		
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		next = endPage * cri.getNumber() >= totalCount ? false : true;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	
}
