package org.han.util;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.han.service.UserService;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserAuthInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // 로그인 사용자 정보를 쿠키에서 가져옴
    	Cookie[] cookies = request.getCookies();
    	boolean result = false;

    	for (Cookie cookie : cookies) {
			System.out.println("Interceptor_foreach : "+cookie.getName());
			
			if (cookie.getName().equals("login")){
				result = true;	
			}
		}

		if(result){
			return true;
		}
		else
		{
			response.sendRedirect("/user/login");
			return false;
		}
	
    }
  
}

