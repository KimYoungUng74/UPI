package kr.co.upi.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ResultController {

	//���⵵ ��� �򰡺� ������
	@RequestMapping(value = "yearlyResult.do")
	public ModelAndView yearlyResult(Locale locale, Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("yearlyResult");
		return mav;
	}
}
