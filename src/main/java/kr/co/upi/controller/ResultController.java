package kr.co.upi.controller;

import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.Service.ResultService;

@Controller
public class ResultController {

	@Autowired
	ResultService resultSer;
	
	// 전년도 대비 평가 비교 페이지
	@RequestMapping(value = "yearly_result_view.do")
	public ModelAndView yearlyResult(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/yearly_result_view");
		return mav;
	}

	// 연도별 등급 표 페이지
	@RequestMapping(value = "yearly_grade_view.do")
	public ModelAndView yearlyGrad(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/yearly_grade_view");
		return mav;
	}

	// 총괄 결과표 페이지
	@RequestMapping(value = "result_grid_view.do")
	public ModelAndView resultGrid(Locale locale, Model model) {
		
		Calendar cal = Calendar.getInstance(); 
		String YEAR = Integer.toString(cal.get(Calendar.YEAR)); // 현재 년도 계산
		
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
