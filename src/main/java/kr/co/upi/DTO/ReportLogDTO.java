package kr.co.upi.DTO;

import java.sql.Date;

public class ReportLogDTO {
	
	private int LOG_NUM;			// �α� ��ȣ PK
	private int REPORT_NUM;			// ���� ��ȣ FK
    private int INDICATORS_NUM;		// ������ȣ FK
    private String ELEMENT_VAL;		// ��� ��
    private int TARGET_VAL;			// ��ǥ ��
    private int PRESENT_VAL;		// ���� ��
    private Date RECORD_DATE;		// ������
    private String USER_ID;			// �������̵�
    private int ACTION_CODE;		// ���� �ڵ�
    private Date LOG_DATE;			// �α� ��¥
    
	public int getLOG_NUM() {
		return LOG_NUM;
	}
	public void setLOG_NUM(int lOG_NUM) {
		LOG_NUM = lOG_NUM;
	}
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
	public int getTARGET_VAL() {
		return TARGET_VAL;
	}
	public void setTARGET_VAL(int tARGET_VAL) {
		TARGET_VAL = tARGET_VAL;
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
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
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
		return "ReportLogDTO [LOG_NUM=" + LOG_NUM + ", REPORT_NUM=" + REPORT_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM
				+ ", ELEMENT_VAL=" + ELEMENT_VAL + ", TARGET_VAL=" + TARGET_VAL + ", PRESENT_VAL=" + PRESENT_VAL
				+ ", RECORD_DATE=" + RECORD_DATE + ", USER_ID=" + USER_ID + ", ACTION_CODE=" + ACTION_CODE
				+ ", LOG_DATE=" + LOG_DATE + "]";
	}
	
    
}
