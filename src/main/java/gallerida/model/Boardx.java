package gallerida.model;

import java.sql.Date;

public class Boardx {
	
	private int bx_num;
	private String id;
	private String bx_content;
	private String bx_subject;
	private String bx_categ;
	private Date bx_date;
	private int bx_read;
	private String bx_del;
	
	
	public int getBx_num() {
		return bx_num;
	}
	public void setBx_num(int bx_num) {
		this.bx_num = bx_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBx_content() {
		return bx_content;
	}
	public void setBx_content(String bx_content) {
		this.bx_content = bx_content;
	}
	public String getBx_subject() {
		return bx_subject;
	}
	public void setBx_subject(String bx_subject) {
		this.bx_subject = bx_subject;
	}
	public String getBx_categ() {
		return bx_categ;
	}
	public void setBx_categ(String bx_categ) {
		this.bx_categ = bx_categ;
	}
	public Date getBx_date() {
		return bx_date;
	}
	public void setBx_date(Date bx_date) {
		this.bx_date = bx_date;
	}
	public int getBx_read() {
		return bx_read;
	}
	public void setBx_read(int bx_read) {
		this.bx_read = bx_read;
	}
	public String getBx_del() {
		return bx_del;
	}
	public void setBx_del(String bx_del) {
		this.bx_del = bx_del;
	}
	
	
	
}
