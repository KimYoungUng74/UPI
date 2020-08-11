package kr.co.upi.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

/**
 * Handles requests for the application home page.
 */
@Controller
public class LogController {

	private static final Logger logger = LoggerFactory.getLogger(LogController.class);

	@Autowired
	TestService testSer;
	
	@Autowired
	IndicatorsService indcSer;
	
	@Autowired
	ResultService resultSer;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "log_view.lo")
	public ModelAndView log_view(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("log/logList");
		return mav;
	}

}
