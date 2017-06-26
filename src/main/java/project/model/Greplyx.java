package project.model;

import java.sql.Date;

public class Greplyx {
	private int rex_num;
	private String rex_content;
	private Date rex_date;
	private String rex_del;
	private String id;
	private int bx_num;
	
	public int getRex_num() {
		return rex_num;
	}
	public void setRex_num(int rex_num) {
		this.rex_num = rex_num;
	}
	public String getRex_content() {
		return rex_content;
	}
	public void setRex_content(String rex_content) {
		this.rex_content = rex_content;
	}
	public Date getRex_date() {
		return rex_date;
	}
	public void setRex_date(Date rex_date) {
		this.rex_date = rex_date;
	}
	public String getRex_del() {
		return rex_del;
	}
	public void setRex_del(String rex_del) {
		this.rex_del = rex_del;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBx_num() {
		return bx_num;
	}
	public void setBx_num(int bx_num) {
		this.bx_num = bx_num;
	}
}
