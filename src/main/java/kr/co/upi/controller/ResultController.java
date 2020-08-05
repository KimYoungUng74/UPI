package kr.co.upi.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.GradeCountDTO;
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
			c_now_year += now_year.get(i).getGC();
		}

		for (int i = 0; i < one_year_ago.size(); i++) {
			c_one_year_ago += one_year_ago.get(i).getGC();
		}

		for (int i = 0; i < two_year_ago.size(); i++) {
			c_two_year_ago += two_year_ago.get(i).getGC();
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

		int pA = 0;
		int pB = 0;
		int pD = 0;
		int pEtc = 0;

		// 제작년도 퍼센트
		for (int i = 0; i < p_two_year_ago.size(); i++) {
			pA += p_two_year_ago.get(i).getA();
			pB += p_two_year_ago.get(i).getB();
			pD += p_two_year_ago.get(i).getD();
			pEtc += p_two_year_ago.get(i).getETC();
		}

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

		List<String> p_one_year = cal.calPer(pA, pB, pD, pEtc);

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

		List<String> p_now = cal.calPer(pA, pB, pD, pEtc);

		ModelAndView mav = new ModelAndView();

		// 각 년도별 가져온 DB 데이터
		mav.addObject("now_year", now_year);
		mav.addObject("one_year_ago", one_year_ago);
		mav.addObject("two_year_ago", two_year_ago);

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

		mav.setViewName("result_view/yearly_grade_view");
		return mav;
	}

	// 총괄 결과표 페이지
	@RequestMapping(value = "result_grid_view.do")
	public ModelAndView resultGrid(Locale locale, Model model) {

		List<RecordDTO> dto = resultSer.selectResultListAll(YEAR);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/result_grid_view");
		mav.addObject("viewAll", dto);
		mav.addObject("year", YEAR);
		return mav;
	}

	// 사업별 등급 표 페이지
	@RequestMapping(value = "business_grade_view.do")
	public ModelAndView businessGrade(Locale locale, Model model) {

		List<RecordDTO> dto = resultSer.selectBusinessGrade(YEAR);
		List<GradeCountDTO> now_year = resultSer.selectYearGrade(YEAR);
		List<Integer> total = new ArrayList<Integer>();
		List<String> grade = new ArrayList<String>();
		List<String> business = new ArrayList<String>();
		List<Integer> pGrade = new ArrayList<Integer>();
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
			all += now_year.get(i).getGC();

		}

		total.add(all_Best);
		total.add(all_Agency);
		total.add(all_AHA);
		total.add(all_Linc);
		total.add(all_Type3);
		total.add(all);

		// 퍼센트 계산
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("viewAll", dto);
		mav.addObject("now_year", now_year);
		mav.addObject("grade", grade);
		mav.addObject("business", business);
		mav.addObject("total", total);
		mav.setViewName("result_view/business_grade_view");
		return mav;
	}

	// 지표별 산출식 표 페이지
	@RequestMapping(value = "indicator_formula_view.do")
	public ModelAndView indicatorFomula(Locale locale, Model model) {

		List<IndicatorsDTO> dto = indcSer.selectAll();
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("viewAll",dto);
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
