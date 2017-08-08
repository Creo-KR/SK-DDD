package help.vo;


public class GosuVO {
	private MemberVO g_no;
	private CategoryVO c_no;
	
	public GosuVO() {}

	public GosuVO(MemberVO g_no, CategoryVO c_no) {
		super();
		this.g_no = g_no;
		this.c_no = c_no;
	}

	public MemberVO getG_no() {
		return g_no;
	}

	public void setG_no(MemberVO g_no) {
		this.g_no = g_no;
	}

	public CategoryVO getC_no() {
		return c_no;
	}

	public void setC_no(CategoryVO c_no) {
		this.c_no = c_no;
	}

}
