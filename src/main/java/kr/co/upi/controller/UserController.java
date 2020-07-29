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
		mav.setViewName("login");
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
		System.out.println("로그인된"+dto.toString());
		
		ModelAndView mav = new ModelAndView();
		UserDTO userdto = userSer.loginOK(dto); //ID와 PW를 동시에 조건으로 하여 결과값을 가져옴
		if( userdto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("USER_ID", dto.getUSER_ID()); // 유저 ID 세션에 넣기
			session.setAttribute("USER_NAME", dto.getUSER_NAME()); // 유저 NAME 세션에 넣기
			//최신지표리스트
			List<IndicatorsDTO> indcDTOs = indicatorsSer.selectAll();
			int cnt_BEST=0;
			int cnt_AGENCY=0;
			int cnt_AHA =0;
			int cnt_LINC =0;
			int cnt_TYPE3 =0;
			for(int i=0;i<indcDTOs.size();i++) {
				IndicatorsDTO idto = indcDTOs.get(i);
				if(idto.getIS_BEST()==1) {
					cnt_BEST++;
				}
				if(idto.getIS_AGENCY()==1) {
					cnt_AGENCY++;
				}
				if(idto.getIS_AHA()==1) {
					cnt_AHA++;
				}
				if(idto.getIS_LINC()==1) {
					cnt_LINC++;
				}
				if(idto.getIS_TYPE3()==1) {
					cnt_TYPE3++;
				}
			}
			//활용 사업별 지표 갯수
			model.addAttribute("cnt_BEST",cnt_BEST);
			model.addAttribute("cnt_AGENCY",cnt_AGENCY);
			model.addAttribute("cnt_AHA",cnt_AHA);
			model.addAttribute("cnt_LINC",cnt_LINC);
			model.addAttribute("cnt_TYPE3",cnt_TYPE3);
			//A등급 보고서
			List<RecordDTO> A_GRADE = resultSer.selectListGrade("A");
			//B등급 보고서
			List<RecordDTO> B_GRADE = resultSer.selectListGrade("B");
			//D등급 보고서
			List<RecordDTO> D_GRADE = resultSer.selectListGrade("D");
			model.addAttribute("A_GRADE",A_GRADE);
			model.addAttribute("B_GRADE",B_GRADE);
			model.addAttribute("D_GRADE",D_GRADE);
			mav.setViewName("index");
		}else {
			PrintWriter pw = response.getWriter();
			pw.println("<script>alert('로그인 오류입니다.');</script>");
			pw.flush();
			mav.setViewName("login");
		}
		
		
		
		return mav;
	}
	
}
