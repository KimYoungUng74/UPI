package kr.co.upi.DTO;

import java.sql.Date;

public class ReportDTO {
	
	private int REPORT_NUM;			// ������ ��ȣ PK
    private int INDICATORS_NUM;		// ������ȣ FK
    private String ELEMENT_VAL;		// ��� ��
    private int PRESENT_VAL;		// ���� ��
    private int TARGET_VAL;			// ��ǥ ��
    private Date RECORD_DATE;		// ������
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
	public int getTARGET_VAL() {
		return TARGET_VAL;
	}
	public void setTARGET_VAL(int tARGET_VAL) {
		TARGET_VAL = tARGET_VAL;
	}
	public Date getRECORD_DATE() {
		return RECORD_DATE;
	}
	public void setRECORD_DATE(Date rECORD_DATE) {
		RECORD_DATE = rECORD_DATE;
	}
	
	@Override
	public String toString() {
		return "ReportDTO [REPORT_NUM=" + REPORT_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", ELEMENT_VAL="
				+ ELEMENT_VAL + ", PRESENT_VAL=" + PRESENT_VAL + ", TARGET_VAL=" + TARGET_VAL + ", RECORD_DATE="
				+ RECORD_DATE + "]";
	}

	
    
    
}