package help.vo;

public class ApplyVO {
	private Integer r_no;
	private Integer m_no;
	private Integer g_no;

	public ApplyVO(Integer r_no, Integer m_no, Integer g_no) {
		super();
		this.r_no = r_no;
		this.m_no = m_no;
		this.g_no = g_no;
	}

	public Integer getR_no() {
		return r_no;
	}

	public void setR_no(Integer r_no) {
		this.r_no = r_no;
	}

	public Integer getM_no() {
		return m_no;
	}

	public void setM_no(Integer m_no) {
		this.m_no = m_no;
	}

	public Integer getG_no() {
		return g_no;
	}

	public void setG_no(Integer g_no) {
		this.g_no = g_no;
	}

	@Override
	public String toString() {
		return "ApplyVO [r_no=" + r_no + ", m_no=" + m_no + ", g_no=" + g_no + "]";
	}
}