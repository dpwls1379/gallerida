package gallerida.model;

import java.sql.Date;

public class Boardo {
	
	private int bo_num;
	private int pro_num;
	private String id;
	private String bo_subject;
	private String bo_content;
	private Date bo_date;
	private String bo_image;
	private int bo_read;
	private int bo_star;
	private String bo_del;
	
	
	public int getBo_num() {
		return bo_num;
	}
	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBo_subject() {
		return bo_subject;
	}
	public void setBo_subject(String bo_subject) {
		this.bo_subject = bo_subject;
	}
	public String getBo_content() {
		return bo_content;
	}
	public void setBo_content(String bo_content) {
		this.bo_content = bo_content;
	}
	public Date getBo_date() {
		return bo_date;
	}
	public void setBo_date(Date bo_date) {
		this.bo_date = bo_date;
	}
	public String getBo_image() {
		return bo_image;
	}
	public void setBo_image(String bo_image) {
		this.bo_image = bo_image;
	}
	public int getBo_read() {
		return bo_read;
	}
	public void setBo_read(int bo_read) {
		this.bo_read = bo_read;
	}
	public int getBo_star() {
		return bo_star;
	}
	public void setBo_star(int bo_star) {
		this.bo_star = bo_star;
	}
	public String getBo_del() {
		return bo_del;
	}
	public void setBo_del(String bo_del) {
		this.bo_del = bo_del;
	}
	
	
	
}
