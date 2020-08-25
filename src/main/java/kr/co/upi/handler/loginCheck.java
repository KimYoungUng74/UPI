package kr.co.upi.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.upi.DTO.UserDTO;

public class loginCheck extends HandlerInterceptorAdapter{
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
		
        return true;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // TODO Auto-generated method stub
    	response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String userid = (String) session.getAttribute("USER_ID");
        String userpw = (String) session.getAttribute("USER_PW");
		if (userid == null) {
			modelAndView.setViewName("user/login");
		} else if (userpw.equals("d8f01284fda46e5584a444a23ea4d977b89b1ebb586812b3cad97662270e4aed")) { // 암호가 12346578일
			modelAndView.setViewName("user/pwUpdate");
		}
        super.postHandle(request, response, handler, modelAndView);
    }
    
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // TODO Auto-generated method stub
        super.afterCompletion(request, response, handler, ex);
    }
}
