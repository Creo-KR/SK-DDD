package help.vo;

public class PageMaker {
	private Integer page;
	private Integer count;
	private Integer start;
	private Integer end;
	private boolean prev;
	private boolean next;
	
	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		//page가 1보다 작으면 paging 처리 필요 없으므로
		//return;
		if(page < 1) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setCount(Integer count) {
		//컬럼 개수 파악
		//컬럼이 없으면 페이징 paging 처리 필요 없으므로
		//return;
		if(count < 1) {
			return;
		}
		this.count = count;
		calcPage();
	}
	
	private void calcPage() {
		//현재 페이지 번호 = page
		//현재 페이지 기준으로 끝 페이지 계산
		int endPage = (int)(Math.ceil(page / 10.0) * 10);
		
		//시작 페이지 계산
		this.start = endPage - 9;
		
		//가상 페이지가 실제 칼럼보다 많을 경우
		if(endPage * 10 > this.count) {
			this.end = (int) Math.ceil(this.count / 10.0);
		}else {
			this.end = endPage;
		}
		//이전
		this.prev = this.start != 1; 
		//다음
		this.next = this.end * 10 < this.count; 
		
	}
}
