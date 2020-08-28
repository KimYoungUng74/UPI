package kr.co.upi.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

	@RequestMapping(value = "index2.do", method = RequestMethod.GET)
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
		//BEST 지표 개수
		List<RecordDTO> BUSINESS_BEST = resultSer.selectListBussiness("IS_BEST");		
		//기관 평가 인증 지표 개수	
		List<RecordDTO> BUSINESS_AGENCY = resultSer.selectListBussiness("IS_AGENCY");
		//혁신지원AHA 지표 개수
		List<RecordDTO> BUSINESS_AHA = resultSer.selectListBussiness("IS_AHA");
		//사회맞춤형 LINC 지표 개수
		List<RecordDTO> BUSINESS_LINC = resultSer.selectListBussiness("IS_LINC");
		//3유형 지표 개수
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
	
	// 홈 페이지
		@RequestMapping(value = "index.do")
		public ModelAndView status_list_view(HttpServletRequest request,Locale locale, Model model, String Years,String Divive, HttpSession session) {
			
			//Years 지정 년도
			if(Years==null){ // 뷰에서 지정한 년도 값이 없는 경우
				if(session.getAttribute("sYears") != null) { //세션값이 있을 경우
					Years = (String)session.getAttribute("sYears");  //년도 정보를 세션값에서 가져옴
				}else {
					Years = (new java.util.Date().getYear()+1900)+""; // 세션값도 없다면 걍 최신년도 가져옴
				}
			}else {
				session.setAttribute("sYears", Years); // 지정 값이 있는 경우 세션에 지정년도를 지정합니다.
			}
			int Divive_int = 0;
			if(Divive != null) {
				Divive_int = Integer.parseInt(Divive);
			}
			
			//년도정보 추가
			model.addAttribute("Years", Years);
			//년도정보 추가
			model.addAttribute("Divive", Divive_int);
			
			RecordDTO dto = new RecordDTO();
			
			dto.setTARGET_VAL(Years); //년도값
			dto.setACTION_CODE(Divive_int); //분기값
			List<RecordDTO> StatusDTOs = resultSer.StatusList(dto); // 년도와 분기로 검색
			//전체 현황 추가
			model.addAttribute("StatusDTOs", StatusDTOs);
			
			// BEST 지표
			List<RecordDTO> BUSINESS_BEST = new ArrayList();
			// 기관 평가 인증
			List<RecordDTO> BUSINESS_AGENCY = new ArrayList();
			// 혁신지원AHA
			List<RecordDTO> BUSINESS_AHA = new ArrayList();
			// 사회맞춤형 LINC
			List<RecordDTO> BUSINESS_LINC = new ArrayList();
			// 3유형 지표
			List<RecordDTO> BUSINESS_TYPE3 = new ArrayList();
			
			
			//각 지표값 사업별로 삽입
			for(int i=0;i<StatusDTOs.size();i++) {
				if(StatusDTOs.get(i).getIS_BEST() == 1) {
					BUSINESS_BEST.add(StatusDTOs.get(i));
				}
				if(StatusDTOs.get(i).getIS_AGENCY() == 1) {
					BUSINESS_AGENCY.add(StatusDTOs.get(i));
				}
				if(StatusDTOs.get(i).getIS_AHA() == 1) {
					BUSINESS_AHA.add(StatusDTOs.get(i));
				}
				if(StatusDTOs.get(i).getIS_LINC() == 1) {
					BUSINESS_LINC.add(StatusDTOs.get(i));
				}
				if(StatusDTOs.get(i).getIS_TYPE3() == 1) {
					BUSINESS_TYPE3.add(StatusDTOs.get(i));
				}
			}
			
			
			
			
			
			model.addAttribute("BEST",BUSINESS_BEST);
			model.addAttribute("AGENCY",BUSINESS_AGENCY);
			model.addAttribute("AHA",BUSINESS_AHA);
			model.addAttribute("LINC",BUSINESS_LINC);
			model.addAttribute("TYPE3",BUSINESS_TYPE3);
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("status/status_list_view");
			return mav;
		}

}
