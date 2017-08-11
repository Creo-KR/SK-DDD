package help.vo;

public class TradeVO {
	private Integer t_no;
	private Integer t_requester;
	private Integer t_respondent;
	private String t_enddate;
	private RequestVO req;
	
	public TradeVO() {
		
	}

	public Integer getT_no() {
		return t_no;
	}

	public void setT_no(Integer t_no) {
		this.t_no = t_no;
	}

	public Integer getT_requester() {
		return t_requester;
	}

	public void setT_requester(Integer t_requester) {
		this.t_requester = t_requester;
	}

	public Integer getT_respondent() {
		return t_respondent;
	}

	public void setT_respondent(Integer t_respondent) {
		this.t_respondent = t_respondent;
	}

	public String getT_enddate() {
		return t_enddate;
	}

	public void setT_enddate(String t_enddate) {
		this.t_enddate = t_enddate;
	}
 
	//여기
	public Integer getR_no() {
		return req.getR_no();
	}
	
	public RequestVO getReq() {
		return req;
	}

	public void setReq(RequestVO req) {
		this.req = req;
	}
	
	

	@Override
	public String toString() {
		return "TradeVO [t_no=" + t_no + ", t_requester=" + t_requester + ", t_respondent=" + t_respondent
				+ ", t_enddate=" + t_enddate + ", req=" + req + "]";
	}
}
