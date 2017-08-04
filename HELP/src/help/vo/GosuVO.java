package help.vo;


public class GosuVO {
	private int g_no;
	private String g_intro;
	private CategoryVO c_no;
	
	public GosuVO() {}

	public GosuVO(int g_no, String g_intro, CategoryVO c_no) {
		super();
		this.g_no = g_no;
		this.g_intro = g_intro;
		this.c_no = c_no;
	}

	public int getG_no() {
		return g_no;
	}

	public void setG_no(int g_no) {
		this.g_no = g_no;
	}

	public String getG_intro() {
		return g_intro;
	}

	public void setG_intro(String g_intro) {
		this.g_intro = g_intro;
	}

	public CategoryVO getC_no() {
		return c_no;
	}

	public void setC_no(CategoryVO c_no) {
		this.c_no = c_no;
	}

	

}
