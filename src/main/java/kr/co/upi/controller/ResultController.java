package kr.co.upi.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.GradeCountDTO;
import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.Service.IndicatorsService;
import kr.co.upi.Service.ResultService;
import kr.co.upi.utill.GradePerDTO;

@Controller
public class ResultController {

	@Autowired
	ResultService resultSer;

	@Autowired
	IndicatorsService indcSer;

	Calendar cal = Calendar.getInstance();
	String YEAR = Integer.toString(cal.get(Calendar.YEAR)); // 현재 년도 계산
	String ONE_YEAR_AGO = Integer.toString(cal.get(Calendar.YEAR) - 1); // 1년전 계산
	String TWO_YEAR_AGO = Integer.toString(cal.get(Calendar.YEAR) - 2); // 2년전 계산

	// 전년도 대비 평가 비교 페이지
	@RequestMapping(value = "yearly_result_view.do")
	public ModelAndView yearlyResult(Locale locale, Model model) {

		/*
		 * HashMap<String,List<RecordDTO>> map=new HashMap<String,List<RecordDTO>>();
		 */

		List<RecordDTO> now_year = resultSer.selectYearList(YEAR);
		List<RecordDTO> one_year_ago = resultSer.selectYearList(ONE_YEAR_AGO);
		List<RecordDTO> two_year_ago = resultSer.selectYearList(TWO_YEAR_AGO);
		List<GradeDTO> gDto = resultSer.selectResultGradeStandard(); // 평가 등급 기준
		/*
		 * map.put("now_year", now_year); map.put("one_year_ago", one_year_ago);
		 * map.put("two_year_ago", two_year_ago);
		 */

		ModelAndView mav = new ModelAndView();
		/* mav.addObject("yearMap", map); */
		mav.addObject("now_year", now_year);
		mav.addObject("one_year_ago", one_year_ago);
		mav.addObject("two_year_ago", two_year_ago);

		mav.addObject("year", YEAR);
		mav.addObject("one_year", ONE_YEAR_AGO);
		mav.addObject("two_year", TWO_YEAR_AGO);

		// 평가 등급 기준
		mav.addObject("viewGrade", gDto);

		mav.setViewName("result_view/yearly_result_view");
		return mav;
	}

	// 연도별 등급 표 페이지
	@RequestMapping(value = "yearly_grade_view.do")
	public ModelAndView yearlyGrad(Locale locale, Model model) {

		List<GradeCountDTO> now_year = resultSer.selectYearGrade(YEAR);
		List<GradeCountDTO> one_year_ago = resultSer.selectYearGrade(ONE_YEAR_AGO);
		List<GradeCountDTO> two_year_ago = resultSer.selectYearGrade(TWO_YEAR_AGO);
		List<Integer> total = new ArrayList<Integer>();
		List<String> grade = new ArrayList<String>();

		grade.add("A");
		grade.add("B");
		grade.add("D");
		grade.add("기타");

		// 총합 계산
		int c_now_year = 0;
		int c_one_year_ago = 0;
		int c_two_year_ago = 0;

		for (int i = 0; i < now_year.size(); i++) {
			c_now_year += (now_year.get(i).getA() + now_year.get(i).getB() + now_year.get(i).getD() + now_year.get(i).getETC());
		}

		for (int i = 0; i < one_year_ago.size(); i++) {
			c_one_year_ago += (one_year_ago.get(i).getA() + one_year_ago.get(i).getB() + one_year_ago.get(i).getD() + one_year_ago.get(i).getETC());
			
		}
	
		for (int i = 0; i < two_year_ago.size(); i++) {
			c_two_year_ago += (two_year_ago.get(i).getA() + two_year_ago.get(i).getB() + two_year_ago.get(i).getD() + two_year_ago.get(i).getETC());
		}

		total.add(c_two_year_ago);
		total.add(c_one_year_ago);
		total.add(c_now_year);

		// 퍼센트 계산
		GradePerDTO cal = new GradePerDTO();

		List<GradeCountDTO> p_two_year_ago = resultSer.BusinessGradePer(TWO_YEAR_AGO);
		List<GradeCountDTO> p_one_year_ago = resultSer.BusinessGradePer(ONE_YEAR_AGO);
		List<GradeCountDTO> p_now_year = resultSer.BusinessGradePer(YEAR);
		ArrayList<Integer> pGrade = new ArrayList<Integer>();
		List<GradeDTO> gDto = resultSer.selectResultGradeStandard(); // 평가 등급 기준

		// 제작년도 퍼센트
		int pA = 0;
		int pB = 0;
		int pD = 0;
		int pEtc = 0;

		for (int i = 0; i < p_two_year_ago.size(); i++) {
			pA += p_two_year_ago.get(i).getA();
			pB += p_two_year_ago.get(i).getB();
			pD += p_two_year_ago.get(i).getD();
			pEtc += p_two_year_ago.get(i).getETC();
		}

		// 실제 등급별 갯수
		List<Integer> p_two_year_ago1 = new ArrayList<Integer>();
		p_two_year_ago1.add(pA);
		p_two_year_ago1.add(pB);
		p_two_year_ago1.add(pD);
		p_two_year_ago1.add(pEtc);

		// 퍼센트 계산 및 리스트에 담기
		List<String> p_two_year = cal.calPer(pA, pB, pD, pEtc);

		// 작년도 퍼센트
		pA = 0;
		pB = 0;
		pD = 0;
		pEtc = 0;

		for (int i = 0; i < p_one_year_ago.size(); i++) {
			pA += p_one_year_ago.get(i).getA();
			pB += p_one_year_ago.get(i).getB();
			pD += p_one_year_ago.get(i).getD();
			pEtc += p_one_year_ago.get(i).getETC();
		}

		// 실제 등급별 갯수
		List<Integer> p_one_year_ago1 = new ArrayList<Integer>();
		p_one_year_ago1.add(pA);
		p_one_year_ago1.add(pB);
		p_one_year_ago1.add(pD);
		p_one_year_ago1.add(pEtc);

		// 퍼센트 계산 및 리스트에 담기
		List<String> p_one_year = cal.calPer(pA, pB, pD, pEtc);

		for (int i = 0; i < p_one_year.size(); i++) {
			System.out.println("두번째 " + p_one_year.get(i));
		}

		// 이번년도 퍼센트
		pA = 0;
		pB = 0;
		pD = 0;
		pEtc = 0;

		for (int i = 0; i < p_now_year.size(); i++) {
			pA += p_now_year.get(i).getA();
			pB += p_now_year.get(i).getB();
			pD += p_now_year.get(i).getD();
			pEtc += p_now_year.get(i).getETC();
		}

		// 실제 등급별 갯수
		List<Integer> p_now_year1 = new ArrayList<Integer>();
		p_now_year1.add(pA);
		p_now_year1.add(pB);
		p_now_year1.add(pD);
		p_now_year1.add(pEtc);

		// 퍼센트 계산 및 리스트에 담기
		List<String> p_now = cal.calPer(pA, pB, pD, pEtc);

		ModelAndView mav = new ModelAndView();

		// 각 년도별 가져온 DB 데이터
		mav.addObject("now_year", now_year);
		mav.addObject("one_year_ago", one_year_ago);
		mav.addObject("two_year_ago", two_year_ago);

		mav.addObject("p_now_year", p_now_year1);
		mav.addObject("p_one_year_ago", p_one_year_ago1);
		mav.addObject("p_two_year_ago", p_two_year_ago1);

		// 년도 등급별총합 등급 표기
		mav.addObject("year", YEAR);
		mav.addObject("one_year", ONE_YEAR_AGO);
		mav.addObject("two_year", TWO_YEAR_AGO);
		mav.addObject("total", total);
		mav.addObject("grade", grade);

		// 퍼센트 표기
		mav.addObject("p_two_year", p_two_year);
		mav.addObject("p_one_year", p_one_year);
		mav.addObject("p_now", p_now);

		// 평가 등급 기준
		mav.addObject("viewGrade", gDto);

		mav.setViewName("result_view/yearly_grade_view");
		return mav;
	}

	// 총괄 결과표 페이지
	@RequestMapping(value = "result_grid_view.do")
	public ModelAndView resultGrid(HttpServletRequest request, Locale locale, Model model, String Years,String Divive,
			HttpSession session) {

		// Years 지정 년도
		if (Years == null) { // 뷰에서 지정한 년도 값이 없는 경우
			if (session.getAttribute("sYears") != null) { // 세션값이 있을 경우
				Years = (String) session.getAttribute("sYears"); // 년도 정보를 세션값에서 가져옴
			} else {
				Years = (new java.util.Date().getYear() + 1900) + ""; // 세션값도 없다면 걍 최신년도 가져옴
			}
		} else {
			session.setAttribute("sYears", Years); // 지정 값이 있는 경우 세션에 지정년도를 지정합니다.
		}
		
		int Divive_int = 0;
		if(Divive != null) {
			Divive_int = Integer.parseInt(Divive);
		}
		
		RecordDTO sample_dto = new RecordDTO();
		
		sample_dto.setTARGET_VAL(Years); //년도값
		sample_dto.setACTION_CODE(Divive_int); //분기값
		
		
		List<RecordDTO> dto = resultSer.selectResultListAll(sample_dto); // 정해진 년도로 리스트를 가져옵니다.

		List<GradeDTO> gDto = resultSer.selectResultGradeStandard(); // 평가 등급 기준

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/result_grid_view");

		// 년도정보 추가
		model.addAttribute("Years", Years);
		
		//분기정보 추가
		model.addAttribute("Divive", Divive_int);

		// 현재 년도 총괄 결과
		mav.addObject("viewAll", dto);

		// 평가 등급 기준
		mav.addObject("viewGrade", gDto);

		// 현재 년도
		mav.addObject("year", YEAR);
		return mav;
	}

	// 사업별 등급 표 페이지
	@RequestMapping(value = "business_grade_view.do")
	public ModelAndView businessGrade(HttpServletRequest request, Locale locale, Model model, String Years,String Divive,
			HttpSession session) {

		// Years 지정 년도
		if (Years == null) { // 뷰에서 지정한 년도 값이 없는 경우
			if (session.getAttribute("sYears") != null) { // 세션값이 있을 경우
				Years = (String) session.getAttribute("sYears"); // 년도 정보를 세션값에서 가져옴
			} else {
				Years = (new java.util.Date().getYear() + 1900) + ""; // 세션값도 없다면 걍 최신년도 가져옴
			}
		} else {
			session.setAttribute("sYears", Years); // 지정 값이 있는 경우 세션에 지정년도를 지정합니다.
		}
		
		int Divive_int = 0;
		if(Divive != null) {
			Divive_int = Integer.parseInt(Divive);
		}
		
		RecordDTO sample_dto = new RecordDTO();
		
		sample_dto.setTARGET_VAL(Years); //년도값
		sample_dto.setACTION_CODE(Divive_int); //분기값
		
		System.out.println("현재 년도 값 : " + Years);
		List<RecordDTO> dto = resultSer.selectBusinessGrade(Years);
		List<GradeCountDTO> now_year = resultSer.selectYearGrade(Years);
		List<RecordDTO> business_total = new ArrayList<RecordDTO>();
		List<Integer> total = new ArrayList<Integer>();
		List<Integer> total_grade = new ArrayList<Integer>();
		List<String> grade = new ArrayList<String>();
		List<String> business = new ArrayList<String>();
		List<Integer> pGrade = new ArrayList<Integer>();
		List<GradeDTO> gDto = resultSer.selectResultGradeStandard(); // 평가 등급 기준
		GradePerDTO cal = new GradePerDTO();

		grade.add("A");
		grade.add("B");
		grade.add("D");
		grade.add("기타");
		business.add("IS_BEST");
		business.add("IS_AGENCY");
		business.add("IS_AHA");
		business.add("IS_LINC");
		business.add("IS_TYPE3");

		// 각각 계산
		int is_Best = 0;
		int is_Agency = 0;
		int is_AHA = 0;
		int is_Linc = 0;
		int is_Type3 = 0;
		
		RecordDTO cal_a = new RecordDTO();
		cal_a.setGRADE("A"); cal_a.setIS_BEST(0); cal_a.setIS_AGENCY(0); cal_a.setIS_AHA(0); cal_a.setIS_LINC(0); cal_a.setIS_TYPE3(0);
		RecordDTO cal_b = new RecordDTO();
		cal_a.setGRADE("B"); cal_b.setIS_BEST(0); cal_b.setIS_AGENCY(0); cal_b.setIS_AHA(0); cal_b.setIS_LINC(0); cal_b.setIS_TYPE3(0);
		RecordDTO cal_d = new RecordDTO();
		cal_a.setGRADE("D"); cal_d.setIS_BEST(0); cal_d.setIS_AGENCY(0); cal_d.setIS_AHA(0); cal_d.setIS_LINC(0); cal_d.setIS_TYPE3(0);
		RecordDTO cal_etc = new RecordDTO();
		cal_a.setGRADE("etc"); cal_d.setIS_BEST(0); cal_d.setIS_AGENCY(0); cal_d.setIS_AHA(0); cal_d.setIS_LINC(0); cal_d.setIS_TYPE3(0);
		
		for(int i = 0; i < dto.size(); i++) {
			System.out.println("반복문 시작");
			System.out.println("등급표기 : " + dto.get(i).getGRADE());
			if(dto.get(i).getGRADE().equals("A")) {
				cal_a.setIS_BEST(dto.get(i).getIS_BEST()); 
				cal_a.setIS_AGENCY(dto.get(i).getIS_AGENCY()); 
				cal_a.setIS_AHA(dto.get(i).getIS_AHA()); 
				cal_a.setIS_LINC(dto.get(i).getIS_LINC()); 
				cal_a.setIS_TYPE3(dto.get(i).getIS_TYPE3());
				System.out.println("a 완료");
			}
			
			if(dto.get(i).getGRADE().equals("B")) {
				cal_b.setIS_BEST(dto.get(i).getIS_BEST()); 
				cal_b.setIS_AGENCY(dto.get(i).getIS_AGENCY()); 
				cal_b.setIS_AHA(dto.get(i).getIS_AHA()); 
				cal_b.setIS_LINC(dto.get(i).getIS_LINC()); 
				cal_b.setIS_TYPE3(dto.get(i).getIS_TYPE3());
				System.out.println("b 완료");
			}
			
			if(dto.get(i).getGRADE().equals("D")) {
				cal_d.setIS_BEST(dto.get(i).getIS_BEST()); 
				cal_d.setIS_AGENCY(dto.get(i).getIS_AGENCY()); 
				cal_d.setIS_AHA(dto.get(i).getIS_AHA()); 
				cal_d.setIS_LINC(dto.get(i).getIS_LINC()); 
				cal_d.setIS_TYPE3(dto.get(i).getIS_TYPE3());
				System.out.println("d 완료");
			}
			
			if(dto.get(i).getGRADE().equals("etc")) {
				cal_etc.setIS_BEST(dto.get(i).getIS_BEST()); 
				cal_etc.setIS_AGENCY(dto.get(i).getIS_AGENCY()); 
				cal_etc.setIS_AHA(dto.get(i).getIS_AHA()); 
				cal_etc.setIS_LINC(dto.get(i).getIS_LINC()); 
				cal_etc.setIS_TYPE3(dto.get(i).getIS_TYPE3());
				System.out.println("etc 완료");
			}
		}
		
		business_total.add(cal_a);
		business_total.add(cal_b);
		business_total.add(cal_d);
		business_total.add(cal_etc);
		
		//각 사업별 등급 총 갯수
		int total_a = cal_a.getIS_BEST() + cal_a.getIS_AGENCY() + cal_a.getIS_AHA() + cal_a.getIS_LINC() + cal_a.getIS_TYPE3();
		int total_b = cal_b.getIS_BEST() + cal_b.getIS_AGENCY() + cal_b.getIS_AHA() + cal_b.getIS_LINC() + cal_b.getIS_TYPE3();
		int total_d = cal_d.getIS_BEST() + cal_d.getIS_AGENCY() + cal_d.getIS_AHA() + cal_d.getIS_LINC() + cal_d.getIS_TYPE3();
		int total_etc = cal_etc.getIS_BEST() + cal_etc.getIS_AGENCY() + cal_etc.getIS_AHA() + cal_etc.getIS_LINC() + cal_etc.getIS_TYPE3();
		
		System.out.println("a : " + total_a + "b : " + total_b + "d : " + total_d + "etc : " +total_etc);
		total_grade.add(total_a);
		total_grade.add(total_b);
		total_grade.add(total_d);
		total_grade.add(total_etc);
		
		System.out.println("테스트중 : " + business_total);
		// 총합 계산
		int all_Best = 0;
		int all_Agency = 0;
		int all_AHA = 0;
		int all_Linc = 0;
		int all_Type3 = 0;
		int all = 0;

		for (int i = 0; i < now_year.size(); i++) {
			all_Best += dto.get(i).getIS_BEST();
			all_Agency += dto.get(i).getIS_AGENCY();
			all_AHA += dto.get(i).getIS_AHA();
			all_Linc += dto.get(i).getIS_LINC();
			all_Type3 += dto.get(i).getIS_TYPE3();

		}

		all = all_Best + all_Agency + all_AHA + all_Linc + all_Type3;
		
		total.add(all_Best);
		total.add(all_Agency);
		total.add(all_AHA);
		total.add(all_Linc);
		total.add(all_Type3);
		total.add(all);

		// 퍼센트 계산
		List<String> p_IS_BEST = cal.calPer(cal_a.getIS_BEST(), cal_b.getIS_BEST(), cal_d.getIS_BEST(), cal_etc.getIS_BEST());
		List<String> p_IS_AGENCY = cal.calPer(cal_a.getIS_AGENCY(), cal_b.getIS_AGENCY(), cal_d.getIS_AGENCY(), cal_etc.getIS_AGENCY());
		List<String> p_IS_AHA = cal.calPer(cal_a.getIS_AHA(), cal_b.getIS_AHA(), cal_d.getIS_AHA(), cal_etc.getIS_AHA());
		List<String> p_IS_LINC = cal.calPer(cal_a.getIS_LINC(), cal_b.getIS_LINC(), cal_d.getIS_LINC(), cal_etc.getIS_LINC());
		List<String> p_IS_TYPE3 = cal.calPer(cal_a.getIS_TYPE3(), cal_b.getIS_TYPE3(), cal_d.getIS_TYPE3(), cal_etc.getIS_TYPE3());
		List<String> p_total = cal.calPer(total_a, total_b, total_d, total_etc);
		
		ModelAndView mav = new ModelAndView();
		// 년도정보 추가
		model.addAttribute("Years", Years);
		
		mav.addObject("viewAll", business_total);
		mav.addObject("total_grade",total_grade);
		mav.addObject("grade", grade);
		mav.addObject("business", business);
		mav.addObject("total", total);
		mav.addObject("viewGrade", gDto);
		mav.setViewName("result_view/business_grade_view");
		
		//퍼센트 표기 
		mav.addObject("p_IS_BEST", p_IS_BEST);
		mav.addObject("p_IS_AGENCY", p_IS_AGENCY);
		mav.addObject("p_IS_AHA", p_IS_AHA);
		mav.addObject("p_IS_LINC", p_IS_LINC);
		mav.addObject("p_IS_TYPE3", p_IS_TYPE3);
		mav.addObject("p_total", p_total);
		return mav;
	}

	// 지표별 산출식 표 페이지
	@RequestMapping(value = "indicator_formula_view.do")
	public ModelAndView indicatorFomula(Locale locale, Model model) {

		List<IndicatorsDTO> dto = indcSer.selectAll();

		ModelAndView mav = new ModelAndView();
		mav.addObject("viewAll", dto);
		mav.setViewName("result_view/indicator_formula_view");
		return mav;
	}

	// 지표별 등급 기준 페이지
	@RequestMapping(value = "indicator_grade_standard.do")
	public ModelAndView indicatorGrade(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/indicator_grade_standard");
		return mav;
	}

}
