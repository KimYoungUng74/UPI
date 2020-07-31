package kr.co.upi.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.Service.IndicatorsService;
import kr.co.upi.Service.ResultService;
import kr.co.upi.Service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	TestService testSer;
	
	@Autowired
	IndicatorsService indcSer;
	
	@Autowired
	ResultService resultSer;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		return "redirect:index.do";
	}

	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		//최신지표리스트
		List<IndicatorsDTO> indcDTOs = indcSer.selectAll();
		int cnt_BEST=0;
		int cnt_AGENCY=0;
		int cnt_AHA =0;
		int cnt_LINC =0;
		int cnt_TYPE3 =0;
		for(int i=0;i<indcDTOs.size();i++) {
			IndicatorsDTO idto = indcDTOs.get(i);
			if(idto.getIS_BEST()==1) {
				cnt_BEST++;
			}
			if(idto.getIS_AGENCY()==1) {
				cnt_AGENCY++;
			}
			if(idto.getIS_AHA()==1) {
				cnt_AHA++;
			}
			if(idto.getIS_LINC()==1) {
				cnt_LINC++;
			}
			if(idto.getIS_TYPE3()==1) {
				cnt_TYPE3++;
			}
		}
		//활용 사업별 지표 갯수
		model.addAttribute("cnt_BEST",cnt_BEST);
		model.addAttribute("cnt_AGENCY",cnt_AGENCY);
		model.addAttribute("cnt_AHA",cnt_AHA);
		model.addAttribute("cnt_LINC",cnt_LINC);
		model.addAttribute("cnt_TYPE3",cnt_TYPE3);
		//A등급 보고서
		List<RecordDTO> A_GRADE = resultSer.selectListGrade("A");
		//B등급 보고서
		List<RecordDTO> B_GRADE = resultSer.selectListGrade("B");
		//D등급 보고서
		List<RecordDTO> D_GRADE = resultSer.selectListGrade("D");
		//BEST 보고서
		List<RecordDTO> BUSINESS_BEST = resultSer.selectListBussiness("IS_BEST");		
		//기관 평가 인증 보고서	
		List<RecordDTO> BUSINESS_AGENCY = resultSer.selectListBussiness("IS_AGENCY");
		//혁신지원AHA 보고서
		List<RecordDTO> BUSINESS_AHA = resultSer.selectListBussiness("IS_AHA");
		//사회맞춤형 LINC 보고서
		List<RecordDTO> BUSINESS_LINC = resultSer.selectListBussiness("IS_LINC");
		//3유형 보고서
		List<RecordDTO> BUSINESS_TYPE3 = resultSer.selectListBussiness("IS_TYPE3");
		
		model.addAttribute("A_GRADE",A_GRADE);
		model.addAttribute("B_GRADE",B_GRADE);
		model.addAttribute("D_GRADE",D_GRADE);
		
		model.addAttribute("BUSINESS_BEST",BUSINESS_BEST);
		model.addAttribute("BUSINESS_AGENCY",BUSINESS_AGENCY);
		model.addAttribute("BUSINESS_AHA",BUSINESS_AHA);
		model.addAttribute("BUSINESS_LINC",BUSINESS_LINC);
		model.addAttribute("BUSINESS_TYPE3",BUSINESS_TYPE3);
		
		return "index";
	}

	@RequestMapping(value = "test.do")
	public ModelAndView test(Locale locale, Model model) {

		System.out.println(testSer.DBTest());

		ModelAndView mav = new ModelAndView();
		mav.setViewName("home");
		return mav;
	}

}
