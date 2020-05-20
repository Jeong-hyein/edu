package co.yedam.app.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncodingFilter
 */
@WebFilter("*.do") //모든 do에 대해 filter가 실행될거다,"board":board로 시작하는거,"/board/": 보드 밑에꺼, /,* 같이 못씀!!!!!!!!!!!!!!
public class EncodingFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// 서블릿 실행 전에 실행
		request.setCharacterEncoding("utf-8");
		System.out.println("인코딩 필터 실행");
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
		
		// 서블릿 실행 후에
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
