package help.vo;

import java.sql.Date;

public class ChatroomVO {
	private Integer cr_no;
	private MemberVO cr_user1;
	private MemberVO cr_user2;
	private Date cr_lastdate;
	private Integer cr_active1;
	private Integer cr_active2;

	private String lastMessage;

	public ChatroomVO() {
	}

	public ChatroomVO(Integer cr_no) {
		this.cr_no = cr_no;
	}

	public ChatroomVO(Integer cr_no, MemberVO cr_user1, MemberVO cr_user2, Date cr_lastdate, Integer cr_active1,
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

	public MemberVO getCr_user1() {
		return cr_user1;
	}

	public void setCr_user1(MemberVO cr_user1) {
		this.cr_user1 = cr_user1;
	}

	public MemberVO getCr_user2() {
		return cr_user2;
	}

	public void setCr_user2(MemberVO cr_user2) {
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

	public String getLastMessage() {
		return lastMessage;
	}

	public void setLastMessage(String lastMessage) {
		this.lastMessage = lastMessage;
	}

	public String toString() {
		return "ChatroomVO [cr_no=" + cr_no + ", cr_user1=" + cr_user1 + ", cr_user2=" + cr_user2 + ", cr_lastdate="
				+ cr_lastdate + ", cr_active1=" + cr_active1 + ", cr_active2=" + cr_active2 + ", lastMessage="
				+ lastMessage + "]";
	}

}
