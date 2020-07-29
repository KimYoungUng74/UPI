package kr.co.upi.utill;

import java.util.ArrayList;
import java.util.List;

public class GradePerDTO {

	private String per_A;
	private String per_B;
	private String per_D;
	private String per_etc;

	public String getPer_A() {
		return per_A;
	}

	public void setPer_A(String per_A) {
		this.per_A = per_A;
	}

	public String getPer_B() {
		return per_B;
	}

	public void setPer_B(String per_B) {
		this.per_B = per_B;
	}

	public String getPer_D() {
		return per_D;
	}

	public void setPer_D(String per_D) {
		this.per_D = per_D;
	}

	public String getPer_etc() {
		return per_etc;
	}

	public void setPer_etc(String per_etc) {
		this.per_etc = per_etc;
	}

	public List<String> calPer(Integer A, Integer B, Integer D, Integer etc) {

		List<String> gradePer = new ArrayList<String>();

		int total = A + B + D + etc;
		double per_A = (A / (double) total) * 100;
		double per_B = (B / (double) total) * 100;
		double per_D = (D / (double) total) * 100;
		double per_etc = (etc / (double) total) * 100;

		System.out.println(A + "//" + B + "//" + D + "//" + etc + "//" + total);
		System.out.println(per_A + "//" + per_B + "//" + per_D + "//" + per_etc + "//");

		gradePer.add(String.format("%.1f", per_A));
		gradePer.add(String.format("%.1f", per_B));
		gradePer.add(String.format("%.1f", per_D));
		gradePer.add(String.format("%.1f", per_etc));

		setPer_A(String.format("%.1f", per_A));
		setPer_B(String.format("%.1f", per_B));
		setPer_D(String.format("%.1f", per_D));
		setPer_etc(String.format("%.1f", per_etc));

		return gradePer;
	}

	public static void main(String[] args) {

		GradePerDTO cal = new GradePerDTO();
		cal.calPer(33, 13, 0, 0);
	}

	public void calPer(ArrayList<Integer> pGrade) {
		// TODO Auto-generated method stub
		int total = 0;

		System.out.println(pGrade.size());
		for (int i = 0; i < pGrade.size(); i++) {
			total += pGrade.get(i);
		}

		/*
		 * // A B D 기타 등급이 하나도 없을 때 if (pGrade.size() == 0) { double per_A = 0; double
		 * per_B = 0; double per_D = 0; double per_etc = 0;
		 * 
		 * System.out.println(String.format("%.1f", per_A));
		 * System.out.println(String.format("%.1f", per_B));
		 * System.out.println(String.format("%.1f", per_D));
		 * System.out.println(String.format("%.1f", per_etc));
		 * 
		 * setPer_A(String.format("%.1f", per_A)); setPer_B(String.format("%.1f",
		 * per_B)); setPer_D(String.format("%.1f", per_D));
		 * setPer_etc(String.format("%.1f", per_etc)); }
		 * 
		 * // A등급 갯수 하나만 존재할 때 if (pGrade.size() == 1) { double per_A = (pGrade.get(0) /
		 * (double)total) * 100; double per_B = 0; double per_D = 0; double per_etc = 0;
		 * 
		 * System.out.println(String.format("%.1f", per_A));
		 * System.out.println(String.format("%.1f", per_B));
		 * System.out.println(String.format("%.1f", per_D));
		 * System.out.println(String.format("%.1f", per_etc));
		 * 
		 * setPer_A(String.format("%.1f", per_A)); setPer_B(String.format("%.1f",
		 * per_B)); setPer_D(String.format("%.1f", per_D));
		 * setPer_etc(String.format("%.1f", per_etc)); }
		 * 
		 * // A등급 B등급 둘이 존재할 때 if (pGrade.size() == 2) { double per_A = (pGrade.get(0) /
		 * (double)total) * 100; double per_B = (pGrade.get(1) / (double)total) * 100;
		 * double per_D = 0; double per_etc = 0;
		 * 
		 * System.out.println(String.format("%.1f", per_A));
		 * System.out.println(String.format("%.1f", per_B));
		 * System.out.println(String.format("%.1f", per_D));
		 * System.out.println(String.format("%.1f", per_etc));
		 * 
		 * setPer_A(String.format("%.1f", per_A)); setPer_B(String.format("%.1f",
		 * per_B)); setPer_D(String.format("%.1f", per_D));
		 * setPer_etc(String.format("%.1f", per_etc)); }
		 * 
		 * // A등급 B등급 D 등급 셋이 존재할 때 if (pGrade.size() == 3) { double per_A =
		 * (pGrade.get(0) / (double)total) * 100; double per_B = (pGrade.get(1) /
		 * (double)total) * 100; double per_D = (pGrade.get(2) / (double)total) * 100;
		 * double per_etc = 0;
		 * 
		 * System.out.println(String.format("%.1f", per_A));
		 * System.out.println(String.format("%.1f", per_B));
		 * System.out.println(String.format("%.1f", per_D));
		 * System.out.println(String.format("%.1f", per_etc));
		 * 
		 * setPer_A(String.format("%.1f", per_A)); setPer_B(String.format("%.1f",
		 * per_B)); setPer_D(String.format("%.1f", per_D));
		 * setPer_etc(String.format("%.1f", per_etc)); }
		 * 
		 * // 전부 존재할 때 if (pGrade.size() == 4) { double per_A = (pGrade.get(0) /
		 * (double)total) * 100; double per_B = (pGrade.get(1) / (double)total) * 100;
		 * double per_D = (pGrade.get(2) / (double)total) * 100; double per_etc =
		 * (pGrade.get(3) / (double)total) * 100;
		 * 
		 * System.out.println(String.format("%.1f", per_A));
		 * System.out.println(String.format("%.1f", per_B));
		 * System.out.println(String.format("%.1f", per_D));
		 * System.out.println(String.format("%.1f", per_etc));
		 * 
		 * setPer_A(String.format("%.1f", per_A)); setPer_B(String.format("%.1f",
		 * per_B)); setPer_D(String.format("%.1f", per_D));
		 * setPer_etc(String.format("%.1f", per_etc)); }
		 */

	}
}
