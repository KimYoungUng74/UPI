package kr.co.upi.utill;

public class PagingDTO {

	private int nowPage; // ?˜„?¬?˜?´ì§?
	private int startPage; // ?‹œ?‘?˜?´ì§?
	private int endPage; // ??˜?´ì§?
	private int total; // ê²Œì‹œê¸? ì´? ê°??ˆ˜
	private int cntPerPage; // ?˜?´ì§??‹¹ ê¸? ê°??ˆ˜
	private int lastPage; // ë§ˆì?ë§‰í˜?´ì§?
	private int start; // SQL?— ?“¸ start
	private int end; // SQL?— ?“¸ end
	
	private int cntPage = 5;
	
	public PagingDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public PagingDTO(int total, int nowPage, int cntPerPage) {
		setNowPage(nowPage);
		setCntPerPage(cntPerPage);
		setTotal(total);
		calcLastPage(getTotal(), getCntPerPage());
		calcStartEndPage(getNowPage(), cntPage);
		calcStartEnd(getNowPage(), getCntPerPage());
	}
	
	// ë§ˆì?ë§? ?˜?´ì§? ê³„ì‚°
	public void calcLastPage(int total, int cntPerPage) {
		setLastPage((int) Math.ceil((double)total / (double)cntPerPage));
	}
	
	// ?‹œ?‘, ? ?˜?´ì§? ê³„ì‚°
	public void calcStartEndPage(int nowPage, int cntPage) {
		setEndPage(((int)Math.ceil((double)nowPage / (double)cntPage)) * cntPage);
		if (getLastPage() < getEndPage()) {
			setEndPage(getLastPage());
		}
		setStartPage(getEndPage() - cntPage + 1);
		if (getStartPage() < 1) {
			setStartPage(1);
		}
	}
	
	// DB?— ?‚¬?š©?•  start, end ê°?
	public void calcStartEnd(int nowPage, int cntPerPage) {
		setEnd(nowPage * cntPerPage);
		setStart(getEnd() - cntPerPage + 1);
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCntPerPage() {
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage) {
		this.cntPerPage = cntPerPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getCntPage() {
		return cntPage;
	}

	public void setCntPage(int cntPage) {
		this.cntPage = cntPage;
	}

	@Override
	public String toString() {
		return "PagingDTO [nowPage=" + nowPage + ", startPage=" + startPage + ", endPage=" + endPage + ", total="
				+ total + ", cntPerPage=" + cntPerPage + ", lastPage=" + lastPage + ", start=" + start + ", end=" + end
				+ ", cntPage=" + cntPage + "]";
	}

	
	
	
}
