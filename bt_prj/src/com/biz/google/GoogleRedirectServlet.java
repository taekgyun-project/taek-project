package com.biz.google;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/google_redirect")
public class GoogleRedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("redirect servlet post call");	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("redirect servlet get call");
		String code = request.getParameter("code");
		System.out.println("code" + code);
		
		
//		https://developers.google.com/identity/protocols/OAuth2WebServer
//		POST /oauth2/v4/token HTTP/1.1
//		Host: www.googleapis.com
//		Content-Type: application/x-www-form-urlencoded
//
//		code=4/P7q7W91a-oMsCeLvIaQm6bTrgtp7&
//		client_id=your_client_id&
//		client_secret=your_client_secret&
//		redirect_uri=https://oauth2.example.com/code&
//		grant_type=authorization_code
//		
		
		//code<동의서>
        //apikey	   ---> access_token		
        //securitykey
        //client_id
		
		
		String gooleURL = "https://www.googleapis.com/oauth2/v4/token";
		String client_id = "245672582740-l9lnasv3oh5vek2pd31fba26b2ja108f.apps.googleusercontent.com";
		String redirect_uri = "http://localhost:8088/google_redirect";
		
		Map<String,Object> map = new HashMap<>();
		map.put("code", code);
		map.put("client_id",client_id);
		map.put("client_secret", "GF20VrdY-9lweBvJdq0NtOq-");
		map.put("redirect_uri", redirect_uri);
		map.put("grant_type", "authorization_code");
		
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
        	System.out.print(line); //access_token  refresh_token
            
        } 
        
        System.out.println("===========================done==============================");
        
		
   
	}
	
}
