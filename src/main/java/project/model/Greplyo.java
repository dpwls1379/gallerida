package project.model;

import java.sql.Date;

public class Greplyo {
	private int reo_num;
	private String reo_content;
	private String reo_del;
	private Date reo_date;
	private String id;
	private int bo_num;
	
	public int getReo_num() {
		return reo_num;
	}
	public void setReo_num(int reo_num) {
		this.reo_num = reo_num;
	}
	public String getReo_content() {
		return reo_content;
	}
	public void setReo_content(String reo_content) {
		this.reo_content = reo_content;
	}
	public String getReo_del() {
		return reo_del;
	}
	public void setReo_del(String reo_del) {
		this.reo_del = reo_del;
	}
	public Date getReo_date() {
		return reo_date;
	}
	public void setReo_date(Date reo_date) {
		this.reo_date = reo_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBo_num() {
		return bo_num;
	}
	public void setBo_num(int bo_num) {
		this.bo_num = bo_num;
	}
}
