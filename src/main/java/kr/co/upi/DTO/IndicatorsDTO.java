package kr.co.upi.DTO;

import java.sql.Date;

public class IndicatorsDTO {
	private int CONTROL_NUM;		// 지표 번호 PK
	private int INDICATORS_NUM;		// 관리번호
	private String INDICATORS_NAME;	// 성과지표명
	private int IS_BEST;			// 대학중장기 발전계획
	private int IS_AGENCY;			// 기간평가 인증
	private int IS_AHA;				// 혁신지원 AHA
	private int IS_LINC;			// 사회맞춤형 LINC+
	private int IS_TYPE3;			// 3유형
	private String ELEMENTS;		// 요소이름 (구분자사용 ex: 취업자,취업대상자)
	private String COL_METHOD;		// 수집방법
	private String EVAL_METHOD;		// 평가방법
	private String EVAL_STANDARD;	// 평가기준
	private String DIVISION_NAME;	// 관리부서명
	private String FORMULA;			// 산출식
    private String TARGET_VAL;			// 목표 값
    private int IS_NEGATIVE;			// 정적 부적
	private int IS_USE;				// 사용 여부
	private String USER_ID;			// 유저 아이디
	private String USER_NAME;		// 유저 이름
	private int ACTION_CODE;		// 행위 코드
	private Date RECORD_DATE; // 기록 날짜
	public int getCONTROL_NUM() {
		return CONTROL_NUM;
	}
	public void setCONTROL_NUM(int cONTROL_NUM) {
		CONTROL_NUM = cONTROL_NUM;
	}
	public int getINDICATORS_NUM() {
		return INDICATORS_NUM;
	}
	public void setINDICATORS_NUM(int iNDICATORS_NUM) {
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
	public String getELEMENTS() {
		return ELEMENTS;
	}
	public void setELEMENTS(String eLEMENTS) {
		ELEMENTS = eLEMENTS;
	}
	public String getCOL_METHOD() {
		return COL_METHOD;
	}
	public void setCOL_METHOD(String cOL_METHOD) {
		COL_METHOD = cOL_METHOD;
	}
	public String getEVAL_METHOD() {
		return EVAL_METHOD;
	}
	public void setEVAL_METHOD(String eVAL_METHOD) {
		EVAL_METHOD = eVAL_METHOD;
	}
	public String getEVAL_STANDARD() {
		return EVAL_STANDARD;
	}
	public void setEVAL_STANDARD(String eVAL_STANDARD) {
		EVAL_STANDARD = eVAL_STANDARD;
	}
	public String getDIVISION_NAME() {
		return DIVISION_NAME;
	}
	public void setDIVISION_NAME(String dIVISION_NAME) {
		DIVISION_NAME = dIVISION_NAME;
	}
	public String getFORMULA() {
		return FORMULA;
	}
	public void setFORMULA(String fORMULA) {
		FORMULA = fORMULA;
	}
	public String getTARGET_VAL() {
		return TARGET_VAL;
	}
	public void setTARGET_VAL(String tARGET_VAL) {
		TARGET_VAL = tARGET_VAL;
	}
	public int getIS_NEGATIVE() {
		return IS_NEGATIVE;
	}
	public void setIS_NEGATIVE(int iS_NEGATIVE) {
		IS_NEGATIVE = iS_NEGATIVE;
	}
	public int getIS_USE() {
		return IS_USE;
	}
	public void setIS_USE(int iS_USE) {
		IS_USE = iS_USE;
	}
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
	public int getACTION_CODE() {
		return ACTION_CODE;
	}
	public void setACTION_CODE(int aCTION_CODE) {
		ACTION_CODE = aCTION_CODE;
	}
	public Date getRECORD_DATE() {
		return RECORD_DATE;
	}
	public void setRECORD_DATE(Date rECORD_DATE) {
		RECORD_DATE = rECORD_DATE;
	}
	@Override
	public String toString() {
		return "IndicatorsDTO [CONTROL_NUM=" + CONTROL_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", INDICATORS_NAME="
				+ INDICATORS_NAME + ", IS_BEST=" + IS_BEST + ", IS_AGENCY=" + IS_AGENCY + ", IS_AHA=" + IS_AHA
				+ ", IS_LINC=" + IS_LINC + ", IS_TYPE3=" + IS_TYPE3 + ", ELEMENTS=" + ELEMENTS + ", COL_METHOD="
				+ COL_METHOD + ", EVAL_METHOD=" + EVAL_METHOD + ", EVAL_STANDARD=" + EVAL_STANDARD + ", DIVISION_NAME="
				+ DIVISION_NAME + ", FORMULA=" + FORMULA + ", TARGET_VAL=" + TARGET_VAL + ", IS_NEGATIVE=" + IS_NEGATIVE
				+ ", IS_USE=" + IS_USE + ", USER_ID=" + USER_ID + ", USER_NAME=" + USER_NAME + ", ACTION_CODE="
				+ ACTION_CODE + ", RECORD_DATE=" + RECORD_DATE + "]";
	}
	
	
	
	
}