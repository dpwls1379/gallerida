package gallerida.model;

public class GCart {
	private int ct_num;
	private String ct_image;
	private int ct_count;
	private String ct_del;
	private int pro_num;
	private String id;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCt_num() {
		return ct_num;
	}
	public void setCt_num(int ct_num) {
		this.ct_num = ct_num;
	}
	public String getCt_image() {
		return ct_image;
	}
	public void setCt_image(String ct_image) {
		this.ct_image = ct_image;
	}
	public int getCt_count() {
		return ct_count;
	}
	public void setCt_count(int ct_count) {
		this.ct_count = ct_count;
	}
	public String getCt_del() {
		return ct_del;
	}
	public void setCt_del(String ct_del) {
		this.ct_del = ct_del;
	}
	public int getPro_num() {
		return pro_num;
	}
	public void setPro_num(int pro_num) {
		this.pro_num = pro_num;
	}
	
	
}
