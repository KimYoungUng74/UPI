package kr.co.upi.DTO;

import java.sql.Date;

public class UserDTO {
	
	private String USER_ID;		// 유저아이디
    private String USER_NAME;		// 유저 이름
    private String USER_PW;		// 유저 패스워드
    
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getUSER_PW() {
		return USER_PW;
	}
	public void setUSER_PW(String uSER_PW) {
		USER_PW = uSER_PW;
	}
	
	@Override
	public String toString() {
		return "UserDTO [USER_ID=" + USER_ID + ", USER_NAME=" + USER_NAME + ", USER_PW=" + USER_PW + "]";
	}
   
}
