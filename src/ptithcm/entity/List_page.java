package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="List_page")
public class List_page {
	@Id
	@GeneratedValue
	public String id_page;	
	public String list_page;
	
	public String getId_page() {
		return id_page;
	}
	public void setId_page(String id_page) {
		this.id_page = id_page;
	}
	public String getList_page() {
		return list_page;
	}
	public void setList_page(String list_page) {
		this.list_page = list_page;
	}
}
