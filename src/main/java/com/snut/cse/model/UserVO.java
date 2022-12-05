package com.snut.cse.model;

public class UserVO {

	private String userEmail;
	private String userPassword;
	private int isAdmin;
	private int regDate;
	private int point;

	public String getUserEmail() {
		return userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public int getRegDate() {
		return regDate;
	}

	public int getPoint() {
		return point;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	public void setRegDate(int regDate) {
		this.regDate = regDate;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "UseerVO [userEmail=" + userEmail + ", userPassword=" + userPassword + ", isAdmin=" + isAdmin
				+ ", regDate=" + regDate + ", point=" + point + "]";
	}

}
