package kr.co.upi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
	@Autowired 
	UserService userSer;
	@Autowired
	ResultService resultSer; 
	@Autowired
	IndicatorsService indicatorsSer;
	
	@RequestMapping(value = "login.do")
	public ModelAndView login_do(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}
	
	@RequestMapping(value = "login_check.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String login_check(@RequestParam("USER_ID") String USER_ID,@RequestParam("USER_PW") String USER_PW) {// dto에 ID, PW 를 들고 옵니다.
		UserDTO dto = new UserDTO();
		dto.setUSER_ID(USER_ID);
		dto.setUSER_PW(USER_PW);
		
		return userSer.IDCheck(dto);
	}
	
	@RequestMapping(value = "login_ok.do" ,method = RequestMethod.POST)
	public ModelAndView login_ok(Locale locale, Model model,UserDTO dto,HttpServletRequest request,HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		UserDTO userdto = userSer.loginOK(dto); //ID와 PW를 동시에 조건으로 하여 결과값을 가져옴
		
		if( userdto != null) {
			//세션생성
			HttpSession session = request.getSession();
			session.setAttribute("USER_ID", userdto.getUSER_ID()); // 유저 ID 세션에 넣기
			session.setAttribute("USER_NAME", userdto.getUSER_NAME()); // 유저 NAME 세션에 넣기
			session.setAttribute("USER_GRANT", userdto.getUSER_GRANT()); // 유저 권한 세션에 넣기
			if(userdto.getUSER_PW().equals("d8f01284fda46e5584a444a23ea4d977b89b1ebb586812b3cad97662270e4aed")) { // 암호가 12346578일 경우 변경창으로 넘어갑니다.
 				mav.setViewName("user/pwUpdate");
			}else {
				mav.setViewName("redirect:index.do");
			}
		}else {
			PrintWriter pw = response.getWriter();
			pw.println("<script>alert('로그인 오류입니다.');</script>");
			pw.flush();
			mav.setViewName("user/login");
		}
		
		
		return mav;
	}
	@RequestMapping(value = "logout.do" ,method = RequestMethod.GET)
	public ModelAndView logout(Locale locale, Model model,HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		request.getSession().invalidate();
		mav.setViewName("user/login");
		return mav;
	}
	
	
	@RequestMapping(value = "pw_check.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String pw_check(@RequestParam("USER_PW") String USER_PW,HttpServletRequest request) {//PW 를 들고 옵니다.
		
		UserDTO dto = new UserDTO();
		dto.setUSER_ID((String)request.getSession().getAttribute("USER_ID"));
		dto.setUSER_PW(USER_PW);
		
		return userSer.IDCheck(dto);
	}
	
	@RequestMapping(value = "pwUpdate.do"  ,method = RequestMethod.POST)
	public ModelAndView pwUpdate(Locale locale, Model model,HttpServletRequest request,HttpServletResponse response, UserDTO dto) throws IOException {
		
		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID((String)request.getSession().getAttribute("USER_ID")); //세션에서 id를 가져와서 넣어줍니다. pw는 dto에 담아왔습니다.
		if(userSer.pwUpdate(dto) == 1) { // 변경
			request.getSession().invalidate();
			mav.setViewName("user/login");
		}else {
			PrintWriter pw = response.getWriter();
			pw.println("<script>alert('비밀번호 변경 오류');</script>");
			pw.flush();
			mav.setViewName("user/pwUpdate");
		}
		return mav;
	}
	
	@RequestMapping(value = "userReg.do")
	public ModelAndView userReg(Locale locale, Model model,HttpServletRequest request,HttpServletResponse response, UserDTO dto) throws IOException {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("user/userReg");
		return mav;
	}
	
}
