package kr.co.upi.DTO;

public class IndicatorsDTO {
	
	private int INDICATORS_NUM;		// ������ȣ PK
	private String INDICATORS_NAME;	// ������ǥ��
	private int IS_BEST;			// ��������� ������ȹ
	private int IS_AGENCY;			// �Ⱓ�� ����
	private int IS_AHA;				// �������� AHA
	private int IS_LINC;			// ��ȸ������ LINC+
	private int IS_TYPE3;			// 3����
	private String ELEMENTS;		// ����̸� (�����ڻ�� ex: �����,��������)
	private String COL_METHOD;		// �������
	private String EVAL_METHOD;		// �򰡹��
	private String EVAL_STANDARD;	// �򰡱���
	private String DIVISION_NAME;	// �����μ���
	private String FORMULA;			// �����
	private int IS_CORE;			// �ٽ� ����
	private int IS_USE;				// ��� ����
	
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
	public String getELEMENTS() {
		return ELEMENTS;
	}
	public void setELEMENTS(String eLEMENTS) {
		ELEMENTS = eLEMENTS;
	}
	public int getIS_USE() {
		return IS_USE;
	}
	public void setIS_USE(int iS_USE) {
		IS_USE = iS_USE;
	}
	@Override
	public String toString() {
		return "IndicatorsDTO [INDICATORS_NUM=" + INDICATORS_NUM + ", INDICATORS_NAME=" + INDICATORS_NAME + ", IS_BEST="
				+ IS_BEST + ", IS_AGENCY=" + IS_AGENCY + ", IS_AHA=" + IS_AHA + ", IS_LINC=" + IS_LINC + ", IS_TYPE3="
				+ IS_TYPE3 + ", COL_METHOD=" + COL_METHOD + ", EVAL_METHOD=" + EVAL_METHOD + ", EVAL_STANDARD="
				+ EVAL_STANDARD + ", DIVISION_NAME=" + DIVISION_NAME + ", FORMULA=" + FORMULA + ", IS_CORE=" + IS_CORE
				+ ", ELEMENTS=" + ELEMENTS + ", IS_USE=" + IS_USE + "]";
	}
	
	
	
}
