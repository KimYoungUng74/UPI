package kr.co.upi.DTO;

import java.sql.Date;

public class GradeDTO {
	
	private int GRADE_NUM;		// 등급 번호 PK
    private int INDICATORS_NUM;		// 관리번호 FK
    private int A_GRADE;		// A등급 퍼센트
    private int B_GRADE;		// B등급 퍼센트
    private int D_GRADE;		// D등급 퍼센트
    private Date RECORD_DATE;		// 기준일
    
	public int getGRADE_NUM() {
		return GRADE_NUM;
	}
	public void setGRADE_NUM(int gRADE_NUM) {
		GRADE_NUM = gRADE_NUM;
	}
	public int getINDICATORS_NUM() {
		return INDICATORS_NUM;
	}
	public void setINDICATORS_NUM(int iNDICATORS_NUM) {
		INDICATORS_NUM = iNDICATORS_NUM;
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
	public Date getRECORD_DATE() {
		return RECORD_DATE;
	}
	public void setRECORD_DATE(Date rECORD_DATE) {
		RECORD_DATE = rECORD_DATE;
	}
	@Override
	public String toString() {
		return "GradeDTO [GRADE_NUM=" + GRADE_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", A_GRADE=" + A_GRADE
				+ ", B_GRADE=" + B_GRADE + ", D_GRADE=" + D_GRADE + ", RECORD_DATE=" + RECORD_DATE + "]";
	}
    
    
	
    
}
