package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.SurveyDTO;


@Repository
public class SurveyDAO {
	private static final String namespace = "com.jsinc.mybatis.Survey";
	@Autowired
	private SqlSession sqlSession;
	
	public List<SurveyDTO> list(String state) {
		return sqlSession.selectList(namespace + ".listAll", state);
	}
	
	public void input(SurveyDTO dto) {
		sqlSession.insert(namespace + ".input", dto);
	}
	
	public SurveyDTO survey(String title) {
		return sqlSession.selectOne(namespace + ".survey", title);
	}
}
