package dto;

import java.sql.Date;
//
public class MemberDTO {

private String shopid; 
private String shoppw; 
private String shopname; 
private String shopzipnum;
private String shopaddres1 ;
private String shopaddres2 ;

private String shopphone ;
private String shopemail ;
private Date regdate ;

//기본 생성자
public MemberDTO() {

}

public MemberDTO(String shopid) {
	super();
	this.shopid = shopid;
}
public MemberDTO(String shopid, String shoppw, String shopname, String shopzipnum, String shopaddres1,
		String shopaddres2, String shopphone, String shopemail, Date regdate) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopzipnum = shopzipnum;
	this.shopaddres1 = shopaddres1;
	this.shopaddres2 = shopaddres2;
	this.shopphone = shopphone;
	this.shopemail = shopemail;
	this.regdate = regdate;
}

public MemberDTO(String shopid, String shoppw, String shopname, String shopzipnum, String shopaddres1,
		String shopaddres2, String shopphone, String shopemail) {
	super();
	this.shopid = shopid;
	this.shoppw = shoppw;
	this.shopname = shopname;
	this.shopzipnum = shopzipnum;
	this.shopaddres1 = shopaddres1;
	this.shopaddres2 = shopaddres2;
	this.shopphone = shopphone;
	this.shopemail = shopemail;
}

public String getShopid() {
	return shopid;
}

public void setShopid(String shopid) {
	this.shopid = shopid;
}

public String getShoppw() {
	return shoppw;
}

public void setShoppw(String shoppw) {
	this.shoppw = shoppw;
}

public String getShopname() {
	return shopname;
}

public void setShopname(String shopname) {
	this.shopname = shopname;
}

public String getShopzipnum() {
	return shopzipnum;
}

public void setShopzipnum(String shopzipnum) {
	this.shopzipnum = shopzipnum;
}

public String getShopaddres1() {
	return shopaddres1;
}

public void setShopaddres1(String shopaddres1) {
	this.shopaddres1 = shopaddres1;
}

public String getShopaddres2() {
	return shopaddres2;
}

public void setShopaddres2(String shopaddres2) {
	this.shopaddres2 = shopaddres2;
}

public String getShopphone() {
	return shopphone;
}

public void setShopphone(String shopphone) {
	this.shopphone = shopphone;
}

public String getShopemail() {
	return shopemail;
}

public void setShopemail(String shopemail) {
	this.shopemail = shopemail;
}

public Date getRegdate() {
	return regdate;
}

public void setRegdate(Date regdate) {
	this.regdate = regdate;
}


}