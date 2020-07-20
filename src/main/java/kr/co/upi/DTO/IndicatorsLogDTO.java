package kr.co.upi.DTO;

import java.sql.Date;

public class IndicatorsLogDTO {
	
	private int LOG_NUM;			// 로그 번호 PK
	private int INDICATORS_NUM;		// 관리번호 FK
	private String INDICATORS_NAME;	// 성과지표명
	private int IS_BEST;			// 대학중장기 발전계획
	private int IS_AGENCY;			// 기간평가 인증
	private int IS_AHA;				// 혁신지원 AHA
	private int IS_LINC;			// 사회맞춤형 LINC+
	private int IS_TYPE3;			// 3유형
	private String ELEMENTS;		// 요소이름 (구분자사용 ex: 취업자,취업대상자)
	private String COL_METHOD;		// 수집방법
	private String EVAL_METHOD;		// 평가방법
	private String EVAL_STANDARD;	// 평각기준
	private String DIVISION_NAME;	// 관리부서명
	private String FORMULA;			// 산출식
	private int IS_CORE;			// 핵심 여부
	private int IS_USE;				// 사용 여부
	private int A_GRADE;			// A등급 퍼센트
    private int B_GRADE;			// B등급 퍼센트
    private int D_GRADE;			// D등급 퍼센트
    private String USER_ID;			// 유저아이디
    private int ACTION_CODE;		// 행위 코드
    private Date LOG_DATE;			// 로그 날짜
    
    
	public int getLOG_NUM() {
		return LOG_NUM;
	}
	public void setLOG_NUM(int lOG_NUM) {
		LOG_NUM = lOG_NUM;
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
	public int getIS_CORE() {
		return IS_CORE;
	}
	public void setIS_CORE(int iS_CORE) {
		IS_CORE = iS_CORE;
	}
	public int getIS_USE() {
		return IS_USE;
	}
	public void setIS_USE(int iS_USE) {
		IS_USE = iS_USE;
	}
	public int getA_GRADE() {
		return A_GRADE;
	}
	public void setA_GRADE(int a_GRADE) {
		A_GRADE = a_GRADE;
	}
	public int getB_GRADE() {
		return B_GRADE;
	}
	public void setB_GRADE(int b_GRADE) {
		B_GRADE = b_GRADE;
	}
	public int getD_GRADE() {
		return D_GRADE;
	}
	public void setD_GRADE(int d_GRADE) {
		D_GRADE = d_GRADE;
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
		return "IndicatorsLogDTO [LOG_NUM=" + LOG_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", INDICATORS_NAME="
				+ INDICATORS_NAME + ", IS_BEST=" + IS_BEST + ", IS_AGENCY=" + IS_AGENCY + ", IS_AHA=" + IS_AHA
				+ ", IS_LINC=" + IS_LINC + ", IS_TYPE3=" + IS_TYPE3 + ", ELEMENTS=" + ELEMENTS + ", COL_METHOD="
				+ COL_METHOD + ", EVAL_METHOD=" + EVAL_METHOD + ", EVAL_STANDARD=" + EVAL_STANDARD + ", DIVISION_NAME="
				+ DIVISION_NAME + ", FORMULA=" + FORMULA + ", IS_CORE=" + IS_CORE + ", IS_USE=" + IS_USE + ", A_GRADE="
				+ A_GRADE + ", B_GRADE=" + B_GRADE + ", D_GRADE=" + D_GRADE + ", USER_ID=" + USER_ID + ", ACTION_CODE="
				+ ACTION_CODE + ", LOG_DATE=" + LOG_DATE + "]";
	}


	
	
	
	
}
