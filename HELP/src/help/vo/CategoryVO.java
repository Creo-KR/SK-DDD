package help.vo;


public class CategoryVO {
	private Integer c_no;
	private String c_name;
	
	public CategoryVO() {}

	public CategoryVO(Integer c_no, String c_name) {
		super();
		this.c_no = c_no;
		this.c_name = c_name;
	}

	public Integer getC_no() {
		return c_no;
	}

	public void setC_no(Integer c_no) {
		this.c_no = c_no;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	
	
}
