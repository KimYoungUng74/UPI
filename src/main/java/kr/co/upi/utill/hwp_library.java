package kr.co.upi.utill;

import kr.dogfoot.hwplib.*;
import kr.dogfoot.hwplib.object.HWPFile;
import kr.dogfoot.hwplib.writer.HWPWriter;

public class hwp_library {
	public static void hwpsave() throws Exception {
		HWPFile hwpFile = new HWPFile();
		String writePath = "images\\report_"+ new java.util.Date().getYear()+".hwp";
		HWPWriter.toFile(hwpFile, writePath);
		System.out.println("한글파일저장_"+writePath);
	}
}
