package kr.co.upi.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.GradeDTO;
import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.Service.IndicatorsService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class LogController {

	@Autowired
	IndicatorsService indcSer;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	// 로그 리스트 페이지
	@RequestMapping(value = "log_view.lo", produces = "application/text; charset=utf8")
	public ModelAndView log_view(Locale locale, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav = go_log_list(mav);
		return mav;
	}
	
	// 지표 되돌리기
	@RequestMapping(value = "log_back_indicator.lo", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public ModelAndView log_back_indicator(IndicatorsDTO dto,Locale locale, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID(session.getAttribute("USER_ID").toString());
		dto.setUSER_NAME(session.getAttribute("USER_NAME").toString());
		dto.setACTION_CODE(4);

		if (1 != indcSer.indicators_write(dto)) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}
		
		mav = go_log_list(mav);
		return mav;
	}
	
	// 보고서 되돌리기
	@RequestMapping(value = "log_back_report.lo", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public ModelAndView log_back_report(RecordDTO dto, Locale locale, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID(session.getAttribute("USER_ID").toString());
		dto.setUSER_NAME(session.getAttribute("USER_NAME").toString());
		dto.setACTION_CODE(4);

		if (1 != indcSer.report_write(dto)) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}
		mav = go_log_list(mav);
		return mav;
	}
	
	// 등급 되돌리기
	@RequestMapping(value = "log_back_grade.lo", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public ModelAndView log_back_grade(GradeDTO dto, Locale locale, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID(session.getAttribute("USER_ID").toString());
		dto.setUSER_NAME(session.getAttribute("USER_NAME").toString());
		dto.setACTION_CODE(4);

		if (indcSer.modifyGrade(dto) != 1) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}
		mav = go_log_list(mav);
		return mav;
	}
	
	ModelAndView go_log_list(ModelAndView mav) {
		List<IndicatorsDTO> indiDto = indcSer.selectIndiLog();
		List<RecordDTO> recordDto = indcSer.selectRecordLog();
		List<GradeDTO> gradeDto = indcSer.selectGradeLog();
		
		mav.addObject("indiDto", indiDto);
		mav.addObject("recordDto", recordDto);
		mav.addObject("gradeDto", gradeDto);
		mav.setViewName("log/logList");
		return mav;
	}


}
