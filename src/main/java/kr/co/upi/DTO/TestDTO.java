package kr.co.upi.DTO;

public class TestDTO {
	
	private String GRADE_NUM;		// 유저 아이디
    private String INDICATORS_NUM;		// 유저 비밀번호
    private String A_GRADE;		// 유저 아이디
    private String B_GRADE;		// 유저 비밀번호
    private String D_GRADE;		// 유저 아이디
    private String RECORD_DATE;		// 유저 비밀번호
	public String getGRADE_NUM() {
		return GRADE_NUM;
	}
	public void setGRADE_NUM(String gRADE_NUM) {
		GRADE_NUM = gRADE_NUM;
	}
	public String getINDICATORS_NUM() {
		return INDICATORS_NUM;
	}
	public void setINDICATORS_NUM(String iNDICATORS_NUM) {
		INDICATORS_NUM = iNDICATORS_NUM;
	}
	public String getA_GRADE() {
		return A_GRADE;
	}
	public void setA_GRADE(String a_GRADE) {
		A_GRADE = a_GRADE;
	}
	public String getB_GRADE() {
		return B_GRADE;
	}
	public void setB_GRADE(String b_GRADE) {
		B_GRADE = b_GRADE;
	}
	public String getD_GRADE() {
		return D_GRADE;
	}
	public void setD_GRADE(String d_GRADE) {
		D_GRADE = d_GRADE;
	}
	public String getRECORD_DATE() {
		return RECORD_DATE;
	}
	public void setRECORD_DATE(String rECORD_DATE) {
		RECORD_DATE = rECORD_DATE;
	}
	@Override
	public String toString() {
		return "TestDTO [GRADE_NUM=" + GRADE_NUM + ", INDICATORS_NUM=" + INDICATORS_NUM + ", A_GRADE=" + A_GRADE
				+ ", B_GRADE=" + B_GRADE + ", D_GRADE=" + D_GRADE + ", RECORD_DATE=" + RECORD_DATE + ", getGRADE_NUM()="
				+ getGRADE_NUM() + ", getINDICATORS_NUM()=" + getINDICATORS_NUM() + ", getA_GRADE()=" + getA_GRADE()
				+ ", getB_GRADE()=" + getB_GRADE() + ", getD_GRADE()=" + getD_GRADE() + ", getRECORD_DATE()="
				+ getRECORD_DATE() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
    
    

}
