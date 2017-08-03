package help.vo;


public class GosuVO {
	private MemberVO g_no;
	private String g_intro;
	private CategoryVO c_no;
	
	public GosuVO() {}

	public GosuVO(MemberVO g_no, String g_intro, CategoryVO c_no) {
		super();
		this.g_no = g_no;
		this.g_intro = g_intro;
		this.c_no = c_no;
	}

	public MemberVO getG_no() {
		return g_no;
	}

	public void setG_no(MemberVO g_no) {
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
