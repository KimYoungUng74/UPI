package kr.co.upi.DTO;

public class GradeCountDTO {

	private String GRADE; // ��� : A, B, C, ��Ÿ
	private int GC; // ��� �� ����
	
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
