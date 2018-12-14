package com.biz.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/login")
//@WebServlet(name = "MemberServlet", urlPatterns = {"/login"})
public class LoginLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	//로그아웃 -------------------------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("logout");
		
		HttpSession session = request.getSession();
		session.invalidate();
		session.setMaxInactiveInterval(0);
		response.sendRedirect("index.jsp");
		
	}

	//로그인 -------------------------------
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("로그인");
		//${param.userid} 
		String userId = request.getParameter("userid");
		String userPw = request.getParameter("userpw");
		MemberVO mvo = new MemberVO();
		mvo.setUserId(userId);
		mvo.setUserPw(userPw);
		
		MemberDAO dao = new MemberDAO();
		//mvo(id,pw + name,gubun)
		mvo = dao.select(mvo);
		//mvo = new MemberDAO().select(mvo);  //mvo(id,pw)
		
		if(mvo.getUserGubun() == null || mvo.getUserGubun().equals(""))  {
			response.sendRedirect("404.jsp");
		} else {
			//page request session application
			HttpSession session = request.getSession();
			session.setAttribute("SESS_ID", mvo.getUserId());
			session.setAttribute("SESS_NAME",mvo.getUserName());
			session.setAttribute("SESS_GUBUN",mvo.getUserGubun());
			session.setAttribute("SESS_PROFILE_IMG","2018110515143182132_라이언1.png");
			request.setAttribute("REQ_PNT", "1000");
			
			Cookie cname = new Cookie("COOKIE_NAME",mvo.getUserName());
			Cookie cgubun = new Cookie("COOKIE_GUBUN",mvo.getUserGubun());
			
			cname.setDomain("lkh.com");
			cgubun.setDomain("lkh.com");
			
			cname.setMaxAge(60*30);
			cgubun.setMaxAge(60*30);
			
			response.addCookie(cname);
			response.addCookie(cgubun);
			
			
			if(mvo.getUserGubun().equals("u")) {
				//response.sendRedirect("index.jsp");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else if(mvo.getUserGubun().equals("a")) {
				//response.sendRedirect("admin/admin_main.jsp");
				request.getRequestDispatcher("admin/index.jsp").forward(request, response);
			}
		}
		
	}

}
