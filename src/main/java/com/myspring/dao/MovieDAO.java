package com.myspring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myspring.dto.MovieDTO;



@Repository("movieDAO")
public class MovieDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private MovieDTO movieDTO;
	
//	영화 출력
	public List movieList() {
		List movieList = new ArrayList();
		movieList = sqlSession.selectList("mapper.member.movieList");
		return movieList;
	}
	
//	영화 번호에 맞는 영화 출력
	public List viewArticle(int articleNO) {
		List list = sqlSession.selectList("mapper.member.movieInfo", articleNO);
		return list;
	}
	
//	영화 추가
	public void movieAdd(MovieDTO movieDTO) {
		List list = sqlSession.selectList("mapper.member.movieAdd", movieDTO);
	}
	
//	좋아요 업데이트
	public void update_Like(int articleNO){
		sqlSession.insert("mapper.member.updateLike", articleNO);
	}
	
//	좋아요 출력
	public int select_Like(int articleNO) {
		int like = sqlSession.selectOne("mapper.member.selectLike", articleNO);
		return like;
	}
	
}
