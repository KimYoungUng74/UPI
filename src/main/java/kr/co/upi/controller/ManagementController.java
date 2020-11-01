package kr.co.upi.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.Service.IndicatorsService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagementController {

	@Autowired
	IndicatorsService indcSer;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	// 로그 리스트 페이지
	@RequestMapping(value = "user_management.lo", produces = "application/text; charset=utf8")
	public ModelAndView user_management(Locale locale, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user_management/userManagement");
		return mav;
	}
	


}
