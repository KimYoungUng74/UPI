package kr.co.upi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
		mav = userlist(mav);
		return mav;
	}

	// 회원 등록
	@RequestMapping(value = "user_regOk.lo")
	public ModelAndView user_regOk(UserDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		dto.setUSER_PW(SHA256.getSHA256("12345678"));

		if (1 != manageSer.isUser(dto)) {
			if (1 != manageSer.user_reg(dto)) {
				mav.addObject("msg", "reg_ERROR");
				System.out.println("에러");
			} else {
				mav.addObject("msg", "user_regOk");
			}
		} else {
			mav.addObject("msg", "user_already");
		}
		

		mav = userlist(mav);
		return mav;
	}

	// 비밀번호 초기화
	@RequestMapping(value = "pw_initOk.lo")
	public ModelAndView pw_initOk(UserDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		dto.setUSER_PW(SHA256.getSHA256("12345678"));
		
		if (0 != manageSer.isUser(dto)) {
			if (1 != manageSer.pw_init(dto)) {
				mav.addObject("msg", "init_ERROR");
				System.out.println("에러");
			} else {
				mav.addObject("msg", "pw_initOk");
			}
		} else {
			mav.addObject("msg", "isNotUser");
		}
		

		mav = userlist(mav);
		return mav;
	}

	// 회원 수정
	@RequestMapping(value = "user_modifyOk.lo")
	public ModelAndView user_modifyOk(UserDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		if (0 != manageSer.isUser(dto)) {
			if (1 != manageSer.user_modify(dto)) {
				mav.addObject("msg", "modify_ERROR");
				System.out.println("에러");
			} else {
				mav.addObject("msg", "user_modifyOk");
			}
		} else {
			mav.addObject("msg", "isNotUser");
		}
		

		mav = userlist(mav);
		return mav;
	}
	
	// 회원 삭제
	@RequestMapping(value = "user_deleteOk.lo")
	public ModelAndView user_deleteOk(UserDTO dto, Locale locale, Model model, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		if (0 != manageSer.isUser(dto)) {
			if (1 != manageSer.user_delete(dto)) {
				mav.addObject("msg", "modify_ERROR");
				System.out.println("에러");
			} else {
				mav.addObject("msg", "user_delectOk");
			}
		} else {
			mav.addObject("msg", "isNotUser");
		}
		

		mav = userlist(mav);
		return mav;
	}
	
	// 회원 검색
		@RequestMapping(value = "userSearch.lo")
		public ModelAndView userSearch(UserDTO dto, Locale locale, Model model, HttpSession session) {

			ModelAndView mav = new ModelAndView();
			mav.addObject("list", manageSer.user_search(dto));
			mav.setViewName("user_management/userManagement");
			return mav;
		}
	
	public ModelAndView userlist(ModelAndView mav) {
		mav.addObject("list", manageSer.user_list());
		System.out.println(manageSer.user_list());
		mav.setViewName("user_management/userManagement");
		return mav;
	}

}
