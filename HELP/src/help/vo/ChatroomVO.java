package help.vo;

import java.sql.Date;

public class ChatroomVO {
	private Integer cr_no;
	private Integer cr_user1;
	private Integer cr_user2;
	private Date cr_lastdate;
	private Integer cr_active1;
	private Integer cr_active2;

	public ChatroomVO() {
	}

	public ChatroomVO(Integer cr_no, Integer cr_user1, Integer cr_user2, Date cr_lastdate, Integer cr_active1,
			Integer cr_active2) {
		this.cr_no = cr_no;
		this.cr_user1 = cr_user1;
		this.cr_user2 = cr_user2;
		this.cr_lastdate = cr_lastdate;
		this.cr_active1 = cr_active1;
		this.cr_active2 = cr_active2;
	}

	public Integer getCr_no() {
		return cr_no;
	}

	public void setCr_no(Integer cr_no) {
		this.cr_no = cr_no;
	}

	public Integer getCr_user1() {
		return cr_user1;
	}

	public void setCr_user1(Integer cr_user1) {
		this.cr_user1 = cr_user1;
	}

	public Integer getCr_user2() {
		return cr_user2;
	}

	public void setCr_user2(Integer cr_user2) {
		this.cr_user2 = cr_user2;
	}

	public Date getCr_lastdate() {
		return cr_lastdate;
	}

	public void setCr_lastdate(Date cr_lastdate) {
		this.cr_lastdate = cr_lastdate;
	}

	public Integer getCr_active1() {
		return cr_active1;
	}

	public void setCr_active1(Integer cr_active) {
		this.cr_active1 = cr_active;
	}

	public Integer getCr_active2() {
		return cr_active2;
	}

	public void setCr_active2(Integer cr_active2) {
		this.cr_active2 = cr_active2;
	}
}
