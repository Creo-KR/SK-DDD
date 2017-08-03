package help.vo;

public class RequestVO {
	private Integer r_no;
	private CategoryVO category;
	private String r_title;
	private String r_content;
	private Integer r_active;
	private String date;
	
	public RequestVO() {
		
	}

	public RequestVO(Integer r_no, CategoryVO category, String r_title, String r_content, Integer r_active,
			String date) {
		super();
		this.r_no = r_no;
		this.category = category;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_active = r_active;
		this.date = date;
	}

	public Integer getR_no() {
		return r_no;
	}

	public void setR_no(Integer r_no) {
		this.r_no = r_no;
	}

	public CategoryVO getCategory() {
		return category;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "RequestVO [r_no=" + r_no + ", category=" + category + ", r_title=" + r_title + ", r_content="
				+ r_content + ", r_active=" + r_active + ", date=" + date + "]";
	}

	
	
}
