package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;


@Entity
@Table (name="Bill")
public class Bill {
	@Id
	@GeneratedValue
	public int id_bill;	
	
	public String ten;
	public String size;
	public String mau;
	public String so_luong;
	public int gia;
	@NotBlank(message =" ⚠ Tên không được phép trống!!")
	public String ho_ten;
	@NotBlank(message ="⚠ email không được phép trống!!")
	@Email(message ="⚠ Bạn nhập sai kiểu mail, mời nhập lại!!")
	public String email;
	@NotBlank(message ="⚠ Ghi chú không được phép trống!!")
	public String ghi_chu;
	public String tinh_huyen;
	public String xa_phuong;
	@NotBlank(message ="⚠ Địa chỉ không được phép trống!!")
	public String dia_chi;
	@NotBlank(message ="⚠ Số điện thoại không được phép trống!!")
	public String sdt;
	public int tong_tien;
	
	
	public int getId_bill() {
		return id_bill;
	}
	public void setId_bill(int id_bill) {
		this.id_bill = id_bill;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getMau() {
		return mau;
	}
	public void setMau(String mau) {
		this.mau = mau;
	}
	public String getSo_luong() {
		return so_luong;
	}
	public void setSo_luong(String so_luong) {
		this.so_luong = so_luong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getHo_ten() {
		return ho_ten;
	}
	public void setHo_ten(String ho_ten) {
		this.ho_ten = ho_ten;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGhi_chu() {
		return ghi_chu;
	}
	public void setGhi_chu(String ghi_chu) {
		this.ghi_chu = ghi_chu;
	}
	public String getTinh_huyen() {
		return tinh_huyen;
	}
	public void setTinh_huyen(String tinh_huyen) {
		this.tinh_huyen = tinh_huyen;
	}
	public String getXa_phuong() {
		return xa_phuong;
	}
	public void setXa_phuong(String xa_phuong) {
		this.xa_phuong = xa_phuong;
	}
	public String getDia_chi() {
		return dia_chi;
	}
	public void setDia_chi(String dia_chi) {
		this.dia_chi = dia_chi;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public int getTong_tien() {
		return tong_tien;
	}
	public void setTong_tien(int tong_tien) {
		this.tong_tien = tong_tien;
	}

}
