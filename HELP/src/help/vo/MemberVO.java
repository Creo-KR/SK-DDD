package help.vo;

public class MemberVO {

	private Integer m_no;
	private String m_id;
	private String m_pwd;
	private String m_name;
	private String m_email;
	private String m_tel;
	private Integer m_type;
	private Integer m_active;
	private String m_intro;

	public MemberVO() {

	}

	public MemberVO(Integer m_no) {
		this.m_no = m_no;
	}

	public MemberVO(Integer m_no, String m_id, String m_pwd, String m_name, String m_email, String m_tel,
			Integer m_type, Integer m_active, String m_intro) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_tel = m_tel;
		this.m_type = m_type;
		this.m_active = m_active;
		this.m_intro = m_intro;
	}

	public Integer getM_no() {
		return m_no;
	}

	public void setM_no(Integer m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pwd() {
		return m_pwd;
	}

	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public Integer getM_type() {
		return m_type;
	}

	public void setM_type(Integer m_type) {
		this.m_type = m_type;
	}

	public Integer getM_active() {
		return m_active;
	}

	public void setM_active(Integer m_active) {
		this.m_active = m_active;
	}

	public String getM_intro() {
		return m_intro;
	}

	public void setM_intro(String m_intro) {
		this.m_intro = m_intro;
	}

	public String toString() {
		return "MemberVO [m_no=" + m_no + ", m_id=" + m_id + ", m_pwd=" + m_pwd + ", m_name=" + m_name + ", m_email="
				+ m_email + ", m_tel=" + m_tel + ", m_type=" + m_type + ", m_active=" + m_active + ", m_intro="
				+ m_intro + "]";
	}

}
