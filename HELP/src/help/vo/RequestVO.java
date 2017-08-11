package help.vo;

public class RequestVO {
	private Integer r_no;
	private Integer c_no;
	private Integer r_writer;
	private String r_title;
	private String r_content;
	private Integer r_active;
	private String r_date;
	
	public RequestVO() {
		
	}
	
	

	public RequestVO(Integer r_no) {
		super();
		this.r_no = r_no;
	}



	public Integer getR_no() {
		return r_no;
	}

	public void setR_no(Integer r_no) {
		this.r_no = r_no;
	}

	public Integer getC_no() {
		return c_no;
	}

	public void setC_no(Integer c_no) {
		this.c_no = c_no;
	}

	public Integer getR_writer() {
		return r_writer;
	}

	public void setR_writer(Integer r_writer) {
		this.r_writer = r_writer;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public Integer getR_active() {
		return r_active;
	}

	public void setR_active(Integer r_active) {
		this.r_active = r_active;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	@Override
	public String toString() {
		return "RequestVO [r_no=" + r_no + ", c_no=" + c_no + ", r_writer=" + r_writer + ", r_title=" + r_title
				+ ", r_content=" + r_content + ", r_active=" + r_active + ", r_date=" + r_date + "]";
	}
}
