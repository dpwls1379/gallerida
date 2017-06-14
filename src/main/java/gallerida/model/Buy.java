package gallerida.model;

import java.sql.Date;

public class Buy {
	private int buy_num;
	private String buy_addr;
	private String buy_memo;
	private Date buy_date;
	private int pro_num;
	private int ct_num;
	private String id;
	public int getBuy_num() {
		return buy_num;
	}
	public void setBuy_num(int buy_num) {
		this.buy_num = buy_num;
	}
	public String getBuy_addr() {
		return buy_addr;
	}
	public void setBuy_addr(String buy_addr) {
		this.buy_addr = buy_addr;
	}
	public String getBuy_memo() {
		return buy_memo;
	}
	public void setBuy_memo(String buy_memo) {
		this.buy_memo = buy_memo;
	}
	public Date getBuy_date() {
		return buy_date;
	}
	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public int getCt_num() {
		return ct_num;
	}
	public void setCt_num(int ct_num) {
		this.ct_num = ct_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
}
