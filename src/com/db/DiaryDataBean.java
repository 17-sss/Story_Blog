package com.db;

import java.util.Date;

public class DiaryDataBean {
	private int num; // �ϱ� ������ȣ
	private int user_num; // ȸ�� ������ȣ (Userlist ���̺� ����Ű)
	private String diaryid; // �ϱ��� ���� �� (�ϱ��� ����Ʈ) 
	private String subject; // ����
	private Date cdate; // ��¥
	private String content; // ����
	private String ip; // ������
	private String filename; // �����̸�
	private int filesize; // ����ũ��
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getUser_num() {
		return user_num;
	}
	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}
	public String getDiaryid() {
		return diaryid;
	}
	public void setDiaryid(String diaryid) {
		this.diaryid = diaryid;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getFilesize() {
		return filesize;
	}
	public void setFilesize(int filesize) {
		this.filesize = filesize;
	}
	
	@Override
	public String toString() {
		return "DiaryDataBean [num=" + num + ", user_num=" + user_num + ", diaryid=" + diaryid + ", subject=" + subject
				+ ", cdate=" + cdate + ", content=" + content + ", ip=" + ip + ", filename=" + filename + ", filesize="
				+ filesize + "]";
	}
	
	
	
	
	
	
	
	
}
