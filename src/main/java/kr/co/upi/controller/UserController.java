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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.IndicatorsDTO;
import kr.co.upi.DTO.RecordDTO;
import kr.co.upi.DTO.UserDTO;
import kr.co.upi.Service.IndicatorsService;
import kr.co.upi.Service.ResultService;
import kr.co.upi.Service.TestService;
import kr.co.upi.Service.UserService;
import kr.co.upi.utill.SHA256;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	@Autowired UserService userSer;
	 
	
	@RequestMapping(value = "login.do")
	public ModelAndView login_do(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value = "login_check.do", method = RequestMethod.POST)
	@ResponseBody
	public int login_check(@RequestParam("USER_ID") String USER_ID,@RequestParam("USER_PW") String USER_PW) {// dto에 ID, PW 를 들고 옵니다.
		UserDTO dto = new UserDTO();
		dto.setUSER_ID(USER_ID);
		dto.setUSER_PW(USER_PW);
		return userSer.IDCheck(dto);
	}
	
	@RequestMapping(value = "login_ok.do")
	public ModelAndView login_ok(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
}
