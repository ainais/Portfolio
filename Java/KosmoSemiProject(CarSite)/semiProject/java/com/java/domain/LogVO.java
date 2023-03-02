package com.java.domain;

public class LogVO {
	private String userID;
	private String logIP;
	private String logCreateSessionDate;
	private String logExpSessionDate;
	private String logVisitPage;
	private String logReffer;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getLogIP() {
		return logIP;
	}
	public void setLogIP(String logIP) {
		this.logIP = logIP;
	}
	public String getLogCreateSessionDate() {
		return logCreateSessionDate;
	}
	public void setLogCreateSessionDate(String logCreateSessionDate) {
		this.logCreateSessionDate = logCreateSessionDate;
	}
	public String getLogExpSessionDate() {
		return logExpSessionDate;
	}
	public void setLogExpSessionDate(String logExpSessionDate) {
		this.logExpSessionDate = logExpSessionDate;
	}
	public String getLogVisitPage() {
		return logVisitPage;
	}
	public void setLogVisitPage(String logVisitPage) {
		this.logVisitPage = logVisitPage;
	}
	public String getLogReffer() {
		return logReffer;
	}
	public void setLogReffer(String logReffer) {
		this.logReffer = logReffer;
	}
	
	
}
