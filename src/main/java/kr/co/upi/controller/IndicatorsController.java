package kr.co.upi.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.Service.IndicatorsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndicatorsController {

	@Autowired
	IndicatorsService indicatorsSer;

	Date time = new Date(new java.util.Date().getTime()); // 현재 날짜

	// 지표관리 리스트
	@RequestMapping(value = "indicators_view_list.do")
	public ModelAndView report_view_list(Locale locale, Model model) {

		GradeDTO gradeDto = new GradeDTO();
		gradeDto.setRECORD_DATE(time);
		gradeDto = indicatorsSer.selectGrade(gradeDto);

		System.out.println(gradeDto);

		ModelAndView mav = new ModelAndView();
		mav.addObject("gradeDto", gradeDto);
		mav.setViewName("indicators_view/indicatorsList");
		return mav;
	}

	// 새 지표 등록 페이지
	@RequestMapping(value = "indicators_write.do")
	public ModelAndView indicators_write(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("indicators_view/indicatorsWrite");
		return mav;
	}

	// 지표 수정 페이지
	@RequestMapping(value = "indicators_modify.do")
	public ModelAndView indicators_modify(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("indicators_view/indicatorsModify");
		return mav;
	}

	// 보고서 등록 페이지
	@RequestMapping(value = "report_write.do")
	public ModelAndView report_write(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("report_view/reportWrite");
		return mav;
	}

	// 등급기준 변경 
	@RequestMapping(value = "gradeModify.do")
	public ModelAndView gradeModify(Locale local, GradeDTO dto, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(indicatorsSer.modifyGrade(dto)!=1) {
			mav.addObject("msg", "DB_ERROR");
		};
		
		mav.setViewName("report_view/indicatorsList");
		return mav;
	}

}
