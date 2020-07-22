package kr.co.upi.DTO;

import java.sql.Date;

public class GradeDTO {
	
	private int GRADE_NUM;		// 등급 번호 PK
    private int A_GRADE;		// A등급 퍼센트
    private int B_GRADE;		// B등급 퍼센트 
    private int D_GRADE;		// D등급 퍼센트
    private String A_MEASURE; 	// A등급 조치
    private String B_MEASURE; 	// B등급 조치
    private String D_MEASURE; 	// D등급 조치
    private String USER_ID;		// 유저 아이디
    private String USER_NAME;	// 유저 이름
    private String ACTION_CODE;	// 행위 코드
    private Date RECORD_DATE;		// 기준일
    
    
	public int getGRADE_NUM() {
		return GRADE_NUM;
	}
	public void setGRADE_NUM(int gRADE_NUM) {
		GRADE_NUM = gRADE_NUM;
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
	public String getA_MEASURE() {
		return A_MEASURE;
	}
	public void setA_MEASURE(String a_MEASURE) {
		A_MEASURE = a_MEASURE;
	}
	public String getB_MEASURE() {
		return B_MEASURE;
	}
	public void setB_MEASURE(String b_MEASURE) {
		B_MEASURE = b_MEASURE;
	}
	public String getD_MEASURE() {
		return D_MEASURE;
	}
	public void setD_MEASURE(String d_MEASURE) {
		D_MEASURE = d_MEASURE;
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
	public String getUSER_NAME() {
		return USER_NAME;
	}
	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}
	public String getACTION_CODE() {
		return ACTION_CODE;
	}
	public void setACTION_CODE(String aCTION_CODE) {
		ACTION_CODE = aCTION_CODE;
	}
	@Override
	public String toString() {
		return "GradeDTO [GRADE_NUM=" + GRADE_NUM + ", A_GRADE=" + A_GRADE + ", B_GRADE=" + B_GRADE + ", D_GRADE="
				+ D_GRADE + ", A_MEASURE=" + A_MEASURE + ", B_MEASURE=" + B_MEASURE + ", D_MEASURE=" + D_MEASURE
				+ ", USER_ID=" + USER_ID + ", USER_NAME=" + USER_NAME + ", ACTION_CODE=" + ACTION_CODE
				+ ", RECORD_DATE=" + RECORD_DATE + "]";
	}

	
	
    
}
