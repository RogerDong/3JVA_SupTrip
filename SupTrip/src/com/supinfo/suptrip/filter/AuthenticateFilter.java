package com.supinfo.suptrip.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns="/auth/*")
public class AuthenticateFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;
		
		HttpSession mySession =httpReq.getSession();
		
		if( mySession.getAttribute("idbooster")==null){
			
			System.out.println("AuthenticateFilter no session");
			httpResp.sendRedirect("../login");
			
		}else{
			
			System.out.println("AuthenticateFilter found");
			chain.doFilter(request, response);
		}  
		
	}
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
