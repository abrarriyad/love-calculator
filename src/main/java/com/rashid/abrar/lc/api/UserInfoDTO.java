package com.rashid.abrar.lc.api;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class UserInfoDTO {
	
	@NotBlank(message = " * Your Name can't be blank")
	@Size(min = 3, max = 15, message="* Your name should have between 3-15 chars")
	private String userName;
	
	@NotBlank(message = " * Crush Name can't be blank")
	@Size(min = 3, max = 15, message="* Crush name should have between 3-15 chars")
	private String crushName;
	
	@AssertTrue(message = "You have to agree to use our app")
	private boolean termAndCondition;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCrushName() {
		return crushName;
	}
	public void setCrushName(String crushName) {
		this.crushName = crushName;
	}
	public boolean isTermAndCondition() {
		return termAndCondition;
	}
	public void setTermAndCondition(boolean termAndCondition) {
		this.termAndCondition = termAndCondition;
	}
	
	
}
