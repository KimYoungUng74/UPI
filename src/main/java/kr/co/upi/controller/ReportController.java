package kr.co.upi.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
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

import kr.co.upi.DTO.GradeDTO;
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
	
	@Autowired
	ResultService resultSer;
	
	//보고서의 지표리스트 선택 페이지
	@RequestMapping(value = "report_view_list.do")
	public ModelAndView report_view_list(Locale locale, Model model, IndicatorsDTO dto) {
		if(dto.getDIVISION_NAME() == null) {
			dto.setDIVISION_NAME("모두 보기");
		}
		if(dto.getINDICATORS_NAME() == null) {
			dto.setINDICATORS_NAME("");
		}
		model.addAttribute("kategorie", dto);
		model.addAttribute("list", indcSer.selectKategorie(dto));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("report_view/list");
		return mav;
	}
	
	
	//보고서 정보 보기 페이지 
	@RequestMapping(value = "report_view.do")
	public ModelAndView report_view(Locale locale, Model model, ModelAndView mav,IndicatorsDTO idto) {
		// 지표 기본정보 
		model.addAttribute("Indicators", indcSer.selectOne(idto));
		
		// 년도별 보고서
		List<RecordDTO> recordDTOs = resultSer.selectListIncd(idto.getINDICATORS_NUM());
		for(int i=0; i<recordDTOs.size()&&i<3;i++) {
			model.addAttribute("Record_"+(i+1), recordDTOs.get(i));
		}
		//최신 등급 기준 가져오기
		GradeDTO gdto = indcSer.selectGrade();
		model.addAttribute("Grade",gdto);
		
		mav.setViewName("report_view/view");
		return mav;
	}
	
	
	
	
}
