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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.UserDTO;
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
	public ModelAndView report_view_list(Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		mav = setIndicatorsList(mav);
		return mav;
	}

	// 새 지표 등록 페이지
	@RequestMapping(value = "indicators_write.do")
	public ModelAndView indicators_write(Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("indicators_view/indicatorsWrite");
		return mav;
	}

	// 새 지표 등록
	@RequestMapping(value = "indicators_writeOk.do")
	public ModelAndView indicators_writeOk(IndicatorsDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID("9703007");
		dto.setUSER_NAME("관리자");
		dto.setACTION_CODE(1);

		System.out.println(dto);

		if (1 != indicatorsSer.indicators_write(dto)) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}

		mav = setIndicatorsList(mav);
		return mav;
	}

	// 지표 수정 페이지
	@RequestMapping(value = "indicators_modify.do")
	public ModelAndView indicators_modify(Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("indicators_view/indicatorsModify");
		return mav;
	}

	// 지표 수정
	@RequestMapping(value = "indicators_modifyOk.do")
	public ModelAndView indicators_modifyOk(IndicatorsDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID("9703007");
		dto.setUSER_NAME("관리자");
		dto.setACTION_CODE(2);
		dto.setINDICATORS_NUM(2);
		System.out.println(dto);

		if (1 != indicatorsSer.indicators_modify(dto)) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}

		mav = setIndicatorsList(mav);
		return mav;
	}

	// 보고서 등록 페이지
	@RequestMapping(value = "report_write.do")
	public ModelAndView report_write(Locale locale, Model model,IndicatorsDTO dto, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		dto = indicatorsSer.selectOne(dto);
		System.out.println(dto);
		mav.addObject("dto", dto);
		mav.setViewName("report_view/reportWrite");
		return mav;
	}

	// 등급기준 변경
	@RequestMapping(value = "gradeModify.do")
	public ModelAndView gradeModify(Locale local, GradeDTO dto, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID("9703007");
		dto.setUSER_NAME("관리자");
		dto.setACTION_CODE(2);
		if (indicatorsSer.modifyGrade(dto) != 1) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}

		mav = setIndicatorsList(mav);
		return mav;
	}

	// 리스트로 가기
	public ModelAndView setIndicatorsList(ModelAndView mav) {
		GradeDTO gradeDto = new GradeDTO();
		gradeDto.setRECORD_DATE(time);
		gradeDto = indicatorsSer.selectGrade();

		System.out.println(gradeDto);
		mav.addObject("gradeDto", gradeDto);
		mav.setViewName("indicators_view/indicatorsList");
		return mav;
	}

}
