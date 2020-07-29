package kr.co.upi.DTO;

public class GradeCountDTO {

	private String GRADE; // 등급 명
	private int GC; // 등급 별 갯수
	private int A; // A 갯수
	private int B; // B 갯수
	private int D; // C 갯수
	private int ect; // 기타 갯수
	
	public String getGRADE() {
		return GRADE;
	}
	public void setGRADE(String gRADE) {
		GRADE = gRADE;
	}
	
	public int getA() {
		return A;
	}
	public void setA(int a) {
		A = a;
	}
	public int getB() {
		return B;
	}
	public void setB(int b) {
		B = b;
	}
	public int getD() {
		return D;
	}
	public void setD(int d) {
		D = d;
	}
	
	public int getEct() {
		return ect;
	}
	public void setEct(int ect) {
		this.ect = ect;
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
