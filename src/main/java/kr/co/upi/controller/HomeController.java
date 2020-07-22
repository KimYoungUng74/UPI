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
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	TestService testSer;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		return "index";
	}
	
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "index";
	}
	
		@RequestMapping(value = "test.do")
		public ModelAndView test(Locale locale, Model model) {
			
			System.out.println(testSer.DBTest());

			ModelAndView mav = new ModelAndView();
			mav.setViewName("home");
			return mav;
		}
	
}
