package help.vo;


public class GosuVO {
	private int g_no;
	private CategoryVO c_no;
	
	public GosuVO() {}

	public GosuVO(int g_no, CategoryVO c_no) {
		super();
		this.g_no = g_no;
		this.c_no = c_no;
	}

	public int getG_no() {
		return g_no;
	}

	public void setG_no(int g_no) {
		this.g_no = g_no;
	}

	public CategoryVO getC_no() {
		return c_no;
	}

	public void setC_no(CategoryVO c_no) {
		this.c_no = c_no;
	}



}
