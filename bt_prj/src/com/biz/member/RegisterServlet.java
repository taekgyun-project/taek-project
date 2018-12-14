package com.biz.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String saveDirectory = "C:\\uploads\\profile";
      int maxPostSize = 1000000;
      String encoding = "UTF-8";
      FileRenamePolicy policy = new DefaultFileRenamePolicy();
      
      MultipartRequest mrequest = new MultipartRequest(request, saveDirectory, maxPostSize, encoding, policy);
     
     
    
      
      String id = mrequest.getParameter("user_id");
      String name = mrequest.getParameter("user_name");
      String email = mrequest.getParameter("user_email");
      String pw = mrequest.getParameter("user_pw");
      String origPname = mrequest.getOriginalFileName("pname");
      String sysPname = mrequest.getFilesystemName("pname");
      
      MemberVO mvo = new MemberVO();
      mvo.setUserId(id);
      mvo.setUserName(name);
      mvo.setUserEmail(email);
      mvo.setUserPw(pw);
      mvo.setPpath(saveDirectory);
      mvo.setPname(origPname);
      mvo.setSysname(sysPname);
      mvo.setJoinPath("home");
      
      MemberDAO dao = new MemberDAO();
      int res = dao.insert(mvo);
      
      if(res==0) {
         response.sendRedirect("404.jsp");
      }else {
         response.sendRedirect("login.jsp");
      }
      
   }

}