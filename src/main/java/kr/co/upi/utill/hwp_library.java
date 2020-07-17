package kr.co.upi.utill;

import javax.servlet.http.HttpServletRequest;

import kr.dogfoot.hwplib.object.HWPFile;
import kr.dogfoot.hwplib.object.bodytext.Section;
import kr.dogfoot.hwplib.object.bodytext.paragraph.Paragraph;
import kr.dogfoot.hwplib.writer.HWPWriter;

public class hwp_library {
	public static void hwpsave() throws Exception {
		//새로운 hwp 객체생성
		HWPFile hwpFile = new HWPFile();
		//hwp 입력 미구현
		
		//파일저장
		String writePath ="c:\\UPI_CHART\\test.hwp";
		HWPWriter.toFile(hwpFile, writePath);
		System.out.println("한글파일저장_"+writePath);
	}
}
