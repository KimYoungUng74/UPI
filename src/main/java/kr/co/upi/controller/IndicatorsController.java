package kr.co.upi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.Service.TestService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class IndicatorsController {

	// 지표관리 리스트
	@RequestMapping(value = "indicators_view_list.do")
	public ModelAndView report_view_list(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
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
	

}
