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
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.Service.ResultService;

@Controller
public class ResultController {

	@Autowired
	ResultService resultSer;

	Calendar cal = Calendar.getInstance();
	String YEAR = Integer.toString(cal.get(Calendar.YEAR)); // 현재 년도 계산
	String ONE_YEAR_AGO = Integer.toString(cal.get(Calendar.YEAR)-1); // 1년전 계산
	String TWO_YEAR_AGO = Integer.toString(cal.get(Calendar.YEAR)-2); // 2년전 계산
	
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
		
		mav.addObject("year",YEAR);
		mav.addObject("one_year",ONE_YEAR_AGO);
		mav.addObject("two_year",TWO_YEAR_AGO);
		
		mav.setViewName("result_view/yearly_result_view");
		return mav;
	}

	// 연도별 등급 표 페이지
	@RequestMapping(value = "yearly_grade_view.do")
	public ModelAndView yearlyGrad(Locale locale, Model model) {

		List<GradeCountDTO> now_year = resultSer.selectYearGrade(YEAR);
		List<GradeCountDTO> one_year_ago = resultSer.selectYearGrade(ONE_YEAR_AGO);
		List<GradeCountDTO> two_year_ago = resultSer.selectYearGrade(TWO_YEAR_AGO);
		
		
		for(int i=0; i<now_year.size(); i++) {
			System.out.println(now_year.get(i).getGRADE()  + "//" + now_year.get(i).getGC());
		}
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("now_year", now_year);
		mav.addObject("one_year_ago", one_year_ago);
		mav.addObject("two_year_ago", two_year_ago);
		
		mav.addObject("year",YEAR);
		mav.addObject("one_year",ONE_YEAR_AGO);
		mav.addObject("two_year",TWO_YEAR_AGO);
		
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
		mav.addObject("year",YEAR);
		return mav;
	}

	// 사업별 등급 표 페이지
	@RequestMapping(value = "business_grade_view.do")
	public ModelAndView businessGrade(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/business_grade_view");
		return mav;
	}

	// 지표별 산출식 표 페이지
	@RequestMapping(value = "indicator_formula_view.do")
	public ModelAndView indicatorFomula(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
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
