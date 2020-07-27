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
import kr.co.upi.DTO.UserDTO;
import kr.co.upi.Service.IndicatorsService;
import kr.co.upi.Service.ResultService;
import kr.co.upi.Service.TestService;
import kr.co.upi.Service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	@Autowired
	UserService userSer;
	
	@RequestMapping(value = "login.do")
	public ModelAndView login_do(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	
	
	
	@RequestMapping(value = "login_check.do")
	public int login_check(UserDTO dto) {//dto에 ID, PW 를 들고 옵니다.
		int result = 0;
		//ID에 포함된 정보를 가져옵니다.
		UserDTO userdto = userSer.IDCheck(dto);
		
		if(userdto.getUSER_ID()==null) {
			result=1;//id가 없을경우
		}else if(!userdto.getUSER_PW().equals(dto.getUSER_PW())){
			result=2;//pw가 맞지않을경우
		}else {
			result=3;//로그인 성공
		}
		return result;
	}
	
	@RequestMapping(value = "login_ok.do")
	public ModelAndView login_ok(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
}
