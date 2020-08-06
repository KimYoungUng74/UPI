package kr.co.upi.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.upi.DTO.UserDTO;

public class grantCheck extends HandlerInterceptorAdapter{
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String userid = (String) session.getAttribute("USER_ID");
        int userGrant = Integer.parseInt(session.getAttribute("USER_GRANT")+"");
        System.out.println("유저등급확인:"+userGrant);
        
        
    	if(userid == null){
    		PrintWriter pw = response.getWriter();
    		pw.print("<script>alert('로그인이 필요합니다.')</script>");
    		pw.print("<script>location.href='login.do'</script>");
    		pw.flush();
    		//response.sendRedirect("login.do");
        }else if(userGrant < 1) {
        	PrintWriter pw = response.getWriter();
    		pw.print("<script>alert('해당 페이지는 권한이 없습니다.')</script>");
    		pw.print("<script>history.back();</script>");
    		pw.flush();
    		//response.sendRedirect("index.do");
        }
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
        int userGrant = Integer.parseInt(session.getAttribute("USER_GRANT")+"");
        System.out.println("유저등급확인:"+userGrant);
        
        
    	if(userid == null){
    		modelAndView.setViewName("user/login");
        }else if(userGrant < 1) {
        	modelAndView.setViewName("index");
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
