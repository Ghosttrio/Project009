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

@Controller("managerController")
@RequestMapping("/movieManager")
public class ManagerController {

	@Autowired
	private MovieService movieService;
	
	@Autowired
	private MovieDTO movieDTO;
	
//	영화출력
	@RequestMapping(value="/movieManager.do", method=RequestMethod.GET)
	public String movieList(Model model,
			@RequestParam(value="command", required=false) String command,
			@RequestParam(value="title", required=false) String title,
			@RequestParam(value="title_en", required=false) String title_en,
			@RequestParam(value="age", required=false) String age,
			@RequestParam(value="opendate", required=false) String opendate,
			@RequestParam(value="explain", required=false) String explain,
			@RequestParam(value="director", required=false) String director,
			@RequestParam(value="genre", required=false) String genre,
			@RequestParam(value="runningtime", required=false) String runningtime,
			@RequestParam(value="actor", required=false) String actor,
			@RequestParam(value="poster_back", required=false) String poster_back,
			@RequestParam(value="poster_main", required=false) String poster_main) {
		System.out.println("관리자페이지 출력");
		
		if(command != null && command.equals("add")){
			System.out.println("영화 추가 실행");
			movieDTO.setTitle(title);
			movieDTO.setTitle_en(title_en);
			movieDTO.setAge(age);
			movieDTO.setOpendate(opendate);
			movieDTO.setExplain(explain);
			movieDTO.setDirector(director);
			movieDTO.setGenre(genre);
			movieDTO.setRunningtime(runningtime);
			movieDTO.setActor(actor);
			movieDTO.setPoster_back(poster_back);
			movieDTO.setPoster_main(poster_main);
			movieService.add(movieDTO);
		} else if(command != null && command.equals("update")) {
			System.out.println("영화 수정 실행");
		} else if(command != null && command.equals("delete")) {
			System.out.println("영화 삭제 실행");
		} 
		List movieList = movieService.movieList();
		model.addAttribute("movieList", movieList);
		return "movieManager/manager";
	}
	
	


//	} else if(command != null && command.equals("update")){
//		String title = request.getParameter("title");
//		String title_en = request.getParameter("title_en");
//		String age = request.getParameter("age");
//		String opendate = request.getParameter("opendate");
//		String explain = request.getParameter("explain");
//		String director = request.getParameter("director");
//		String genre = request.getParameter("genre");
//		String runningtime = request.getParameter("runningtime");
//		String actor = request.getParameter("actor");
//		String poster_back = request.getParameter("poster_back");
//		String poster_main = request.getParameter("poster_main");
//		vo.setTitle(title);
//		vo.setTitle_en(title_en);
//		vo.setAge(age);
//		vo.setOpendate(opendate);
//		vo.setExplain(explain);
//		vo.setDirector(director);
//		vo.setGenre(genre);
//		vo.setRunningtime(runningtime);
//		vo.setActor(actor);
//		vo.setPoster_back(poster_back);
//		vo.setPoster_main(poster_main);
//		movieService.up(vo);
//	} else if(command != null && command.equals("del")) {
//		String title = request.getParameter("title");
//		System.out.println("서블릿 삭제:" + title);
//		movieService.del(title);

	
	
	
	
	
	
	
	
	
	
	
//	영화추가페이지 출력
	@RequestMapping(value="/add.do", method=RequestMethod.POST)
	public String movieAdd(Model model) {
		System.out.println("추가페이지 출력");
		return "movieManager/add";
	}
	
//	영화수정페이지 출력
	@RequestMapping(value="/update.do", method=RequestMethod.POST) 
	public String movieUpdate(Model model,
			@RequestParam(value="articleNO", required=false) String articleNO) { 
		System.out.println("수정페이지 출력"); 
		List movieList = movieService.viewArticle(Integer.parseInt(articleNO));
		model.addAttribute("movieList", movieList);
		return "movieManager/update"; 
	}
	 
}
