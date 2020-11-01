package kr.co.upi.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.upi.DTO.UserDTO;
import kr.co.upi.Service.ManagementService;
import kr.co.upi.utill.SHA256;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ManagementController {

	@Autowired
	ManagementService manageSer;

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	// 회원 관리 페이지
	@RequestMapping(value = "user_management.lo", produces = "application/text; charset=utf8")
	public ModelAndView user_management(Locale locale, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user_management/userManagement");
		return mav;
	}

	// 새 지표 등록
	@RequestMapping(value = "user_regOk.lo")
	public ModelAndView user_regOk(UserDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		dto.setUSER_PW(SHA256.getSHA256("12345678"));
		System.out.println(dto);

		if (1 != manageSer.user_reg(dto)) {
			mav.addObject("msg", "DB_ERROR");
			System.out.println("에러");
		}

		mav.setViewName("user_management/userManagement");
		return mav;
	}

}
