package kr.co.upi.DTO;

import java.sql.Date;

public class ReportDTO {
	
	private int REPORT_NUM;			// 보고서 번호 PK
    private int INDICATORS_NUM;		// 관리번호 FK
    private String ELEMENT_VAL;		// 요소 값
    private int PRESENT_VAL;		// 현재 값
    private Date RECORD_DATE;		// 기준일
    private int LOG_NUM;		// 로그 번호 FK

	public int getREPORT_NUM() {
		return REPORT_NUM;
	}
	public void setREPORT_NUM(int rEPORT_NUM) {
		REPORT_NUM = rEPORT_NUM;
	}
	public int getINDICATORS_NUM() {
		return INDICATORS_NUM;
	}
	public void setINDICATORS_NUM(int iNDICATORS_NUM) {
		INDICATORS_NUM = iNDICATORS_NUM;
	}
	public String getELEMENT_VAL() {
		return ELEMENT_VAL;
	}
	public void setELEMENT_VAL(String eLEMENT_VAL) {
		ELEMENT_VAL = eLEMENT_VAL;
	}
	public int getPRESENT_VAL() {
		return PRESENT_VAL;
	}
	public void setPRESENT_VAL(int pRESENT_VAL) {
		PRESENT_VAL = pRESENT_VAL;
	}
	public Date getRECORD_DATE() {
		return RECORD_DATE;
	}
	public void setRECORD_DATE(Date rECORD_DATE) {
		RECORD_DATE = rECORD_DATE;
	}
	
	public int getLOG_NUM() {
		return LOG_NUM;
	}
	public void setLOG_NUM(int lOG_NUM) {
		LOG_NUM = lOG_NUM;
	}
	
	@Override
	public String toString() {
		return "ReportDTO [REPORT_NUM=" + REPORT_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", ELEMENT_VAL="
				+ ELEMENT_VAL + ", PRESENT_VAL=" + PRESENT_VAL + ", RECORD_DATE=" + RECORD_DATE + ", LOG_NUM=" + LOG_NUM
				+ "]";
	}


}
