package kr.co.upi.DTO;

public class GradeCountDTO {

	private String GRADE; // 등급 : A, B, C, 기타
	private int GC; // 등급 별 갯수
	
	public String getGRADE() {
		return GRADE;
	}
	public void setGRADE(String gRADE) {
		GRADE = gRADE;
	}
	public int getGC() {
		return GC;
	}
	public void setGC(int gC) {
		GC = gC;
	}
	@Override
	public String toString() {
		return "GradeCountDTO [GRADE=" + GRADE + ", GC=" + GC + "]";
	}
	
	
	
	
}
