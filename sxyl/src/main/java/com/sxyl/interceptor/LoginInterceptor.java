package com.sxyl.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sxyl.bean.system.User;

public class LoginInterceptor
  extends HandlerInterceptorAdapter
{
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
    throws Exception
  {
    HttpSession session = request.getSession();
    Boolean isLogin = Boolean.valueOf(false);
    User user = (User)session.getAttribute("user");
    String xrw = request.getHeader("X-Requested-With");
    if (user != null)
    {
      isLogin = Boolean.valueOf(true);
    }
    else if ("XMLHttpRequest".equals(xrw))
    {
      response.setStatus(401);
    }
    else
    {
      String cp = request.getContextPath();
      response.sendRedirect(cp + "/login");
    }
    return isLogin.booleanValue();
  }
}
