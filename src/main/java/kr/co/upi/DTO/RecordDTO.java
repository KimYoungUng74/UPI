package kr.co.upi.DTO;

import java.sql.Date;

public class RecordDTO {

	private int RECORD_NUM;
	private String INDICATORS_NUM;
	private String INDICATORS_NAME;
	private int IS_BEST;
	private int IS_AGENCY;
	private int IS_AHA;
	private int IS_LINC;
	private int IS_TYPE3;
	private String TARGET_VAL;
    private String ELEMENT_VAL;		// 현재 값
	private String PRESENT_VAL;
	private String GRADE;
	private String ACHIEVE_VAL;
	private Date RECORD_DATE;
	
	public int getRECORD_NUM() {
		return RECORD_NUM;
	}
	public void setRECORD_NUM(int rECORD_NUM) {
		RECORD_NUM = rECORD_NUM;
	}
	public String getINDICATORS_NUM() {
		return INDICATORS_NUM;
	}
	public void setINDICATORS_NUM(String iNDICATORS_NUM) {
		INDICATORS_NUM = iNDICATORS_NUM;
	}
	public String getINDICATORS_NAME() {
		return INDICATORS_NAME;
	}
	public void setINDICATORS_NAME(String iNDICATORS_NAME) {
		INDICATORS_NAME = iNDICATORS_NAME;
	}
	public int getIS_BEST() {
		return IS_BEST;
	}
	public void setIS_BEST(int iS_BEST) {
		IS_BEST = iS_BEST;
	}
	public int getIS_AGENCY() {
		return IS_AGENCY;
	}
	public void setIS_AGENCY(int iS_AGENCY) {
		IS_AGENCY = iS_AGENCY;
	}
	public int getIS_AHA() {
		return IS_AHA;
	}
	public void setIS_AHA(int iS_AHA) {
		IS_AHA = iS_AHA;
	}
	public int getIS_LINC() {
		return IS_LINC;
	}
	public void setIS_LINC(int iS_LINC) {
		IS_LINC = iS_LINC;
	}
	public int getIS_TYPE3() {
		return IS_TYPE3;
	}
	public void setIS_TYPE3(int iS_TYPE3) {
		IS_TYPE3 = iS_TYPE3;
	}
	public String getTARGET_VAL() {
		return TARGET_VAL;
	}
	public void setTARGET_VAL(String tARGET_VAL) {
		TARGET_VAL = tARGET_VAL;
	}
	
	public String getPRESENT_VAL() {
		return PRESENT_VAL;
	}
	public void setPRESENT_VAL(String pRESENT_VAL) {
		PRESENT_VAL = pRESENT_VAL;
	}
	public String getGRADE() {
		return GRADE;
	}
	public void setGRADE(String gRADE) {
		GRADE = gRADE;
	}
	public String getACHIEVE_VAL() {
		return ACHIEVE_VAL;
	}
	public void setACHIEVE_VAL(String aCHIEVE_VAL) {
		ACHIEVE_VAL = aCHIEVE_VAL;
	}
	public Date getRECORD_DATE() {
		return RECORD_DATE;
	}
	public void setRECORD_DATE(Date rECORD_DATE) {
		RECORD_DATE = rECORD_DATE;
	}
	
	
	public String getELEMENT_VAL() {
		return ELEMENT_VAL;
	}
	public void setELEMENT_VAL(String eLEMENT_VAL) {
		ELEMENT_VAL = eLEMENT_VAL;
	}
	@Override
	public String toString() {
		return "RecordDTO [RECORD_NUM=" + RECORD_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", INDICATORS_NAME="
				+ INDICATORS_NAME + ", IS_BEST=" + IS_BEST + ", IS_AGENCY=" + IS_AGENCY + ", IS_AHA=" + IS_AHA
				+ ", IS_LINC=" + IS_LINC + ", IS_TYPE3=" + IS_TYPE3 + ", TARGET_VAL=" + TARGET_VAL + ", ELEMENT_VAL="
				+ ELEMENT_VAL + ", PRESENT_VAL=" + PRESENT_VAL + ", GRADE=" + GRADE + ", ACHIEVE_VAL=" + ACHIEVE_VAL
				+ ", RECORD_DATE=" + RECORD_DATE + "]";
	}
	
	
	
	
	
	
	

	
	
	
	
}
