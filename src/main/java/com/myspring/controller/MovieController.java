package com.myspring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.myspring.dto.MovieDTO;
import com.myspring.service.MovieService;

@Controller("movieController")
@RequestMapping("/movie")
public class MovieController {
	
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private MovieDTO movieDTO;
	
//	영화출력
	@RequestMapping(value="/movieTab.do", method=RequestMethod.GET)
	public String movieList(Model model) {
		System.out.println("영화탭 실행");
		List movieList = movieService.movieList();
//		List list2 = movieService.movieList2();
		model.addAttribute("movieList", movieList);
//		model.addAttribute("movieList2", list2);
		return "movie/movieTab";
	}
	
//	영화상세창 출력
	@RequestMapping(value="/movieInfo.do", method=RequestMethod.GET)
	public String movieInfo(Model model,
			// movieTab에서 articleNO 전달 후 articleNO에 맞는 테이블 포워딩
			@RequestParam("articleNO") String articleNO) {
		List list = movieService.viewArticle(Integer.parseInt(articleNO));
		model.addAttribute("movieList", list);
		return "movie/movieInfo";
	}
	
	
}
