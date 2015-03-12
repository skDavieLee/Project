package project.bean;

import java.util.Date;	// 

public class memberDTO {
	
	// variable declaration
	private String memId;
	private String memPw;
	private String memName;
	private String memEmail;
	private int memPoint;
	private int memGrade;
	private Date memRegdate;
	
	// getter declaration
	public String getMemId() {	return memId;	}
	public String getMemPw() {	return memPw;	}
	public String getMemName() {	return memName;	}
	public String getMemEmail() {	return memEmail;	}
	public int getMemPoint() {	return memPoint; }
	public int getMemGrade() {	return memGrade;}
	public Date getRegdate() {	return memRegdate;	}
	
	
	// setter declaration
	public void setMemId(String memId) {	this.memId = memId;	}
	public void setMemPw(String memPw) {	this.memPw = memPw;	}
	public void setMemName(String memName) {	this.memName = memName;	}
	public void setMemEmail(String memEmail) {	this.memEmail = memEmail;	}
	public void setMemPoint(int memPoint) {	this.memPoint = memPoint;	}
	public void setMemGrade(int memGrade) {	this.memGrade = memGrade;	}
	public void setRegdate(Date memRegdate) {	this.memRegdate = memRegdate;	}
	
} // end of memberDTO