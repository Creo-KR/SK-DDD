package help.vo;

import java.sql.Date;

public class ChatVO {
	private Integer ch_no;
	private Integer ch_sender;
	private Integer ch_receiver;
	private Date ch_date;
	private String ch_text;
	private Integer ch_check;
	private Integer cr_no;

	public ChatVO() {
	}

	public ChatVO(Integer ch_no, Integer ch_sender, Integer ch_receiver, Date ch_date, String ch_text, Integer ch_check,
			Integer cr_no) {
		this.ch_no = ch_no;
		this.ch_sender = ch_sender;
		this.ch_receiver = ch_receiver;
		this.ch_date = ch_date;
		this.ch_text = ch_text;
		this.ch_check = ch_check;
		this.cr_no = cr_no;
	}

	public Integer getCh_no() {
		return ch_no;
	}

	public void setCh_no(Integer ch_no) {
		this.ch_no = ch_no;
	}

	public Integer getCh_sender() {
		return ch_sender;
	}

	public void setCh_sender(Integer ch_sender) {
		this.ch_sender = ch_sender;
	}

	public Integer getCh_receiver() {
		return ch_receiver;
	}

	public void setCh_receiver(Integer ch_receiver) {
		this.ch_receiver = ch_receiver;
	}

	public Date getCh_date() {
		return ch_date;
	}

	public void setCh_date(Date ch_date) {
		this.ch_date = ch_date;
	}

	public String getCh_text() {
		return ch_text;
	}

	public void setCh_text(String ch_text) {
		this.ch_text = ch_text;
	}

	public Integer getCh_check() {
		return ch_check;
	}

	public void setCh_check(Integer ch_check) {
		this.ch_check = ch_check;
	}

	public Integer getCr_no() {
		return cr_no;
	}

	public void setCr_no(Integer cr_no) {
		this.cr_no = cr_no;
	}

}
