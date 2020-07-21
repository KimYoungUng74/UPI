package kr.co.upi.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
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
import kr.co.upi.utill.hwp_library;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ReportController {
	
	@Autowired
	IndicatorsService indcSer;
	
		
		@RequestMapping(value = "report_view_list.do")
		public ModelAndView report_view_list(Locale locale, Model model, IndicatorsDTO dto) {
			/*
			 * if(dto == null) { model.addAttribute("kategorie", dto);
			 * model.addAttribute("list",indcSer.selectKategorie(dto)); }else {
			 * model.addAttribute("list", indcSer.selectAll()); }
			 */
			ModelAndView mav = new ModelAndView();
			mav.setViewName("report_view/list");
			return mav;
		}
		
		@RequestMapping(value = "report_view.do")
		public ModelAndView report_view(Locale locale, Model model) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("report_view/view");
			return mav;
		}
		
		@RequestMapping(value = "report_view2.do")
		public ModelAndView report_view2(Locale locale, Model model) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("report_view/view2");
			return mav;
		}
		@RequestMapping(value = "report_hwp_viewer.hwp")
		public ModelAndView report_view3(Locale locale, Model model,HttpServletRequest request) throws Exception {
			ModelAndView mav = new ModelAndView();
			
			//highchart 이미지화
			
			//한글파일 저장
			//hwp_library.hwpsave();
			
			
			
			mav.setViewName("report_view/hwp_viewer");
			return mav;
		}
	
}
