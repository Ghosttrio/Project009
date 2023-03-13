package com.myspring.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;

@Controller
public class CommentController {

	
//	´ñ±Û ¼­ºí¸´
//	if(action.equals("/reply.do")) {
//		String articleNO = request.getParameter("articleNO");
//		movieVO = movieService.viewArticle(Integer.parseInt(articleNO));
//		request.setAttribute("article", movieVO);
//		request.setAttribute("movieList", movieService.list0(Integer.parseInt(articleNO)));
//		
//		
//		String comment_text = request.getParameter("comment_text");
//		String comment_id = request.getParameter("comment_id");
//		String comment_rate = request.getParameter("comment_rate");
//		movieService.upComment(Integer.parseInt(articleNO), comment_id, comment_text, comment_rate);
//		
//		String _section = request.getParameter("section");
//		String _pageNum = request.getParameter("pageNum");
//		int section = Integer.parseInt(((_section==null) ? "1" : _section));
//		int pageNum = Integer.parseInt(((_pageNum==null) ? "1" : _pageNum));
//		Map<String, Integer> pagingMap = new HashMap<String, Integer>();
//		pagingMap.put("section", section);
//		pagingMap.put("pageNum", pageNum);
//		Map articlesMap = movieService.list4(pagingMap, Integer.parseInt(articleNO));
//		articlesMap.put("section", section);
//		articlesMap.put("pageNum", pageNum);
//		request.setAttribute("articlesMap", articlesMap);
//		
////		List<MovieVO> comment_list = movieService.comment_list();
////		request.setAttribute("comment_list", comment_list);
//		
//		
//		nextPage="/changsoon/¿µÈ­»ó¼¼ÅÇ/movieInfo.jsp";
//		
////		´ë´ñ±Û ¼­ºí¸´
//	} else if(action.equals("/reply2.do")) {
//		String articleNO = request.getParameter("articleNO");
//		movieVO = movieService.viewArticle(Integer.parseInt(articleNO));
//		request.setAttribute("article", movieVO);
//		request.setAttribute("movieList", movieService.list0(Integer.parseInt(articleNO)));
//		
//		int commentNO = Integer.parseInt(request.getParameter("commentNO"));
//		String comment_text = request.getParameter("recomment_text");
//		String comment_id = request.getParameter("recomment_id");
//		movieService.upComment2(Integer.parseInt(articleNO), commentNO, comment_id, comment_text);
//		
//		String _section = request.getParameter("section");
//		String _pageNum = request.getParameter("pageNum");
//		int section = Integer.parseInt(((_section==null) ? "1" : _section));
//		int pageNum = Integer.parseInt(((_pageNum==null) ? "1" : _pageNum));
//		Map<String, Integer> pagingMap = new HashMap<String, Integer>();
//		pagingMap.put("section", section);
//		pagingMap.put("pageNum", pageNum);
//		Map articlesMap = movieService.list4(pagingMap, Integer.parseInt(articleNO));
//		articlesMap.put("section", section);
//		articlesMap.put("pageNum", pageNum);
//		request.setAttribute("articlesMap", articlesMap);
//		
//		
////		List<MovieVO> comment_list = movieService.comment_list();
////		request.setAttribute("comment_list", comment_list);
//		
//		
//		nextPage="/changsoon/¿µÈ­»ó¼¼ÅÇ/movieInfo.jsp";
//	}
}
