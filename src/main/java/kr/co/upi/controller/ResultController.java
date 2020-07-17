package kr.co.upi.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ResultController {

	// ���⵵ ��� �򰡺� ������
	@RequestMapping(value = "yearly_result_view.do")
	public ModelAndView yearlyResult(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/yearly_result_view");
		return mav;
	}

	// ������ ��� ������
	@RequestMapping(value = "yearly_grade_view.do")
	public ModelAndView yearlyGrad(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/yearly_grade_view");
		return mav;
	}

	// �Ѱ� ���ǥ ������
	@RequestMapping(value = "result_grid_view.do")
	public ModelAndView resultGrid(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/result_grid_view");
		return mav;
	}

	// ����� ��ǥ ��� ������
	@RequestMapping(value = "business_grade_view.do")
	public ModelAndView businessGrade(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/business_grade_view");
		return mav;
	}

	// ��ǥ ����� ������
	@RequestMapping(value = "indicator_formula_view.do")
	public ModelAndView indicatorFomula(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/indicator_formula_view");
		return mav;
	}
	
	// ��ǥ�� �򰡵�ޱ��� ������
	@RequestMapping(value = "indicator_grade_standard.do")
	public ModelAndView indicatorGrade(Locale locale, Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("result_view/indicator_grade_standard");
		return mav;
	}

}
