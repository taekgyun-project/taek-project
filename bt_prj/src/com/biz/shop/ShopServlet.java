package com.biz.shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biz.common.PagingUtil;
import com.google.gson.Gson;

/**
 * Servlet implementation class ShopServlet
 */
@WebServlet("/shop")
public class ShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request,response);
    }
    	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsonStr = request.getParameter("MYKEY");
		if(jsonStr != null || jsonStr.equals("")) {
			
	
		
		//  "   {"lat":mylat , "lng":mylng, "topn":-1}   "
		Gson gson = new Gson();
		ShopVO vo = gson.fromJson(jsonStr, ShopVO.class);
		//{"lat":mylat , "lng":mylng, "topn":-1} 
		}else
			
		
		
		ShopDAO dao = new ShopDAO();
		ArrayList<ShopVO> list = new ArrayList<ShopVO>();
		if(vo.getTopn() == -1) {
			
			int currentPage = vo.getCurrentPage();
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			System.out.println("currentPage" + currentPage);
			
			//전체게시물수
			int totalCnt = dao.selectCount();
			
			int blockCount = 2;   //한 블럭의 게시물 수
			int blockPage = 2;    //한화면에 보여질 블럭 수
			PagingUtil page  = new PagingUtil("/shop?", currentPage, totalCnt, blockCount, blockPage);
			String pagingHtml =page.getPagingHtml();
			//request.setAttribute("PAGING", pagingHtml); 
			
			//전체목록 
			
			
			
			
			
			HashMap<String,Object> map = new HashMap<String,Object>();
			
			vo.setStartSeq(page.getStartSeq());
			vo.setEndSeq(page.getEndSeq());
			list = dao.select(vo);
			
			
			map.put("KEY_PAGING", "pagingHtml");
			map.put("MAP_LIST", "list"); 
			
		} else {
			//vo.setTopn(6); 기본은 3개
			
			list = dao.selectTopN(vo);

			HashMap<String,Object> map = new HashMap<String,Object>();
			map.put("KEY_PAGING", "");
			map.put("MAP_LIST", "list");
			
		}
		String returnStr = gson.toJson(list);
		//"[ {"":v, "", v},{"":v, "", v}]"
		
		{"MAP_PAGING" : "<a href=>1</a><a href=>2</a>",
			"MAP_LIST": [ {"":v, "",v},{"":v,"",v} ]
		}
		
		response.setContentType("application/json; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		out.println(returnStr);
	}
    
    
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String jsonStr = request.getParameter("MYKEY");
//		//  "   {"lat":mylat , "lng":mylng}   "
//		Gson gson = new Gson();
//		ShopVO vo = gson.fromJson(jsonStr, ShopVO.class);
//		
//		ShopDAO dao = new ShopDAO();
//		ArrayList<ShopVO> list = dao.select(vo);
//		request.setAttribute("SHOP_LIST", list);
//		request.getRequestDispatcher("index.jsp").forward(request, response);
//	}

	

}
