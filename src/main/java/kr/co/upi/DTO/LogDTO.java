package kr.co.upi.DTO;

import java.sql.Date;

public class LogDTO {
	
	private int LOG_NUM;		// 등급 번호 PK
    private int USER_ID;		// A등급 퍼센트
    private int USER_NAME;		// B등급 퍼센트
    private int TB_CODE;		// D등급 퍼센트
    private int ACTION_CODE;	// 로그 번호 FK
    private Date LOG_DATE;		// 로그 날짜
	public int getLOG_NUM() {
		return LOG_NUM;
	}
	public void setLOG_NUM(int lOG_NUM) {
		LOG_NUM = lOG_NUM;
	}
	public int getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(int uSER_ID) {
		USER_ID = uSER_ID;
	}
	public int getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(int uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public int getTB_CODE() {
		return TB_CODE;
	}
	public void setTB_CODE(int tB_CODE) {
		TB_CODE = tB_CODE;
	}
	public int getACTION_CODE() {
		return ACTION_CODE;
	}
	public void setACTION_CODE(int aCTION_CODE) {
		ACTION_CODE = aCTION_CODE;
	}
	public Date getLOG_DATE() {
		return LOG_DATE;
	}
	public void setLOG_DATE(Date lOG_DATE) {
		LOG_DATE = lOG_DATE;
	}
	@Override
	public String toString() {
		return "LogDTO [LOG_NUM=" + LOG_NUM + ", USER_ID=" + USER_ID + ", USER_NAME=" + USER_NAME + ", TB_CODE="
				+ TB_CODE + ", ACTION_CODE=" + ACTION_CODE + ", LOG_DATE=" + LOG_DATE + "]";
	}
    
  
	
	
    
}
