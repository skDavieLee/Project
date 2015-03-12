package project.bean;

import java.util.Date;

public class movieBoardDTO {
	
	// variable declaration
	private int mbNo;
	private String mbSubject;
	private String mbName;
	private String mbPw;
	private String mbContent;
	private String mbFile_name;
	private String mbIP;
	private int readCount;
	private int downloadCount;
	private Date mbRegdate;
	
	// getter declaration
	public int getMbNo() {	return mbNo;}
	public String getMbSubject() {	return mbSubject;}
	public String getMbName() {	return mbName;}
	public String getMbPw() {	return mbPw;}
	public String getMbContent() {	return mbContent;}
	public String getMbFile_name() {	return mbFile_name;}
	public String getMbIP() {	return mbIP;}
	public int getReadCount() {	return readCount;}
	public int getDownloadCount() {	return downloadCount;}
	public Date getMbRegdate() {	return mbRegdate;}
	
	// setter declaration
	public void setMbNo(int mbNo) {	this.mbNo = mbNo;}
	public void setMbSubject(String mbSubject) {	this.mbSubject = mbSubject;}
	public void setMbName(String mbName) {	this.mbName = mbName;}
	public void setMbPw(String mbPw) {	this.mbPw = mbPw;}
	public void setMbContent(String mbContent) {	this.mbContent = mbContent;}
	public void setMbFile_name(String mbFile_name) {	this.mbFile_name = mbFile_name;}
	public void setMbIP(String mbIP) {	this.mbIP = mbIP;}
	public void setReadCount(int readCount) {	this.readCount = readCount;}
	public void setDownloadCount(int downloadCount) {	this.downloadCount = downloadCount;}
	public void setMbRegdate(Date mbRegdate) {	this.mbRegdate = mbRegdate;}
	
} // end of movieBoardDTO
