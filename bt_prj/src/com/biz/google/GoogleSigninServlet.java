package com.biz.google;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/google_auth")
public class GoogleSigninServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 직접 소켓 통신(JAVA jdk)
		//2. Google API Client Libraries(google_client_api.jar)
		

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id_token = request.getParameter("id_token");
			System.out.println(id_token);
			
			
//			POST  HTTP/1.1
//			Host: www.googleapis.com
//			Content-Type: application/x-www-form-urlencoded
//
//			code=4/P7q7W91a-oMsCeLvIaQm6bTrgtp7&
//			client_id=your_client_id&
//			client_secret=your_client_secret&
//			redirect_uri=https://oauth2.example.com/code&
//			grant_type=authorization_code
//			
//			
//			
//			var url = 'https://accounts.google.com/o/oauth2/v2/auth';
//		    var params = {
//		        client_id: '@ConfigurationManager.AppSettings["GoogleClientID"]',
//		        response_type: 'code',
//		        scope: 'openid profile email',
//		        redirect_uri: '@ConfigurationManager.AppSettings["GoogleRedirectUrl"]',
//		        state: '@GetAntiForgeryToken()',
//		        access_type: 'offline',
//		        //hd:'domain.com' // 이 부분이 원했던 Hosted Domain 기능이다
//		    };
//		    
//		    //redirect_servlet ...  
//			https://www.googleapis.com/oauth2/v4/token
//			dic["code"] = Request["code"] ?? "";
//		    dic["client_id"] = ConfigurationManager.AppSettings["GoogleClientID"];
//		    dic["client_secret"] = ConfigurationManager.AppSettings["GoogleClientSecret"];
//		    dic["redirect_uri"] = ConfigurationManager.AppSettings["GoogleRedirectUrl"];
//		    dic["grant_type"] = "authorization_code";
//		    
						
			
			//String urlString = https://accounts.google.com/o/oauth2/v2/auth?access_type=offline&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar.readonly&response_type=code&redirect_uri=http%3A%2F%2Flocalhost%3A8088%2Fgoogle_redirect&include_granted_scopes=true&client_id=132153140522-9kncrdhhuao0ik7fk37i3r1en8c30qle.apps.googleusercontent.com
			//byte[] postDataBytes = urlString.getBytes("UTF-8");
			
			//위와 같은 주소는 파라미터를 알아보기 어렵기 때문에 아래와 같이 맵을 사용해 ?(쿼리스트링)을 만들어 사용
			//String gooleURL = "https://accounts.google.com/signin/oauth/oauthchooseaccount?client_id=132153140522-9kncrdhhuao0ik7fk37i3r1en8c30qle.apps.googleusercontent.com&as=19W5tmfUly0whsyEWs535Q&destination=http%3A%2F%2Flocalhost%3A8088&approval_state=!ChRUVWpPX2x2UFhmWEEzdlMxR2c4ahIfNDFPZ0ZMUjRJUXNVNEJxcmlYbTVkb25DMWNRU2NSWQ%E2%88%99APNbktkAAAAAW-0jfyVyBLpKwju-pFsPEORJ3wm8SlRG&xsrfsig=AHgIfE9S9yfmZ1dfThO32UWkCZFLv4STkQ&flowName=GeneralOAuthFlow";
			String gooleURL = "https://accounts.google.com/o/oauth2/v2/auth";
			String client_id = "245672582740-l9lnasv3oh5vek2pd31fba26b2ja108f.apps.googleusercontent.com";
			String access_type="offline";
			String response_type="code";
			//POST전송일 경우		
			String scope = "https://www.googleapis.com/auth/calendar.readonly";
			String redirect_uri = "http://localhost:8088/google_redirect";
			
				
			//GET 전송일 경우 인코딩		
			//redirect_uri = http%3A%2F%2Flocalhost%3A8088%2Fgoogle_redirect
			//scope = https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar.readonly
			
			Map<String,Object> map = new HashMap<>();
			map.put("scope", scope);
			map.put("access_type", access_type);
			map.put("include_granted_scopes", true);
			map.put("redirect_uri", redirect_uri);
			map.put("response_type", response_type);
			map.put("client_id",client_id);
			
			//map 데이터를 꺼내 k=v&k2=m& 문장 생성
	        StringBuffer buffer = new StringBuffer();
	        for (Map.Entry<String,Object> keyval : map.entrySet()) {
	            if (buffer.length() != 0) buffer.append('&');
	            //buffer.append(URLEncoder.encode(keyval.getKey(), "UTF-8"));
	            buffer.append(keyval.getKey());
	            buffer.append('=');
	            buffer.append(String.valueOf(keyval.getValue()));
	        }
	        System.out.println(gooleURL+"?"+buffer.toString());
			//StringBuffer  --> String	
			//String  		--> byte[]
			byte[] postDataBytes = buffer.toString().getBytes();		
		
			URL url = new URL(gooleURL);
		    HttpURLConnection connection = (HttpURLConnection) url.openConnection();           
		    connection.setDoOutput(true); 
		    connection.setInstanceFollowRedirects(false); 
		    connection.setRequestMethod("POST"); 
		    connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded"); 
		    connection.setRequestProperty("charset", "utf-8");
		    connection.setRequestProperty("Content-Length", String.valueOf(postDataBytes.length));
		    connection.connect();
		    //http body에 write == POST
		    connection.getOutputStream().write(postDataBytes);  
		    
		    BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "UTF-8"));
		    String line = "";
		    
	        if( (line = in.readLine()) != null ) {
	        	//https://accounts.google.com/signin/oauth/oauthchooseaccount?client_id=132153140522-9kncrdhhuao0ik7fk37i3r1en8c30qle.apps.googleusercontent.com&as=19W5tmfUly0whsyEWs535Q&destination=http%3A%2F%2Flocalhost%3A8088&approval_state=!ChRUVWpPX2x2UFhmWEEzdlMxR2c4ahIfNDFPZ0ZMUjRJUXNVNEJxcmlYbTVkb25DMWNRU2NSWQ%E2%88%99APNbktkAAAAAW-0jfyVyBLpKwju-pFsPEORJ3wm8SlRG&xsrfsig=AHgIfE9S9yfmZ1dfThO32UWkCZFLv4STkQ&flowName=GeneralOAuthFlow
	            System.out.print(line); //동의서 화면<html>출력
	            PrintWriter out = response.getWriter();
	            out.println("ok");
	        } else {
	        	PrintWriter out = response.getWriter();
	        	out.println("fail");
	        }
//			
	        System.out.println("===========================done==============================");
	        
	}

}
