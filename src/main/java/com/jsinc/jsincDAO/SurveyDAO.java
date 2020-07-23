package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.SurveyDTO;
import com.jsinc.jsincDTO.SurveyResultDTO;

// 설문 DAO
@Repository
public class SurveyDAO {
	private static final String namespace = "com.jsinc.mybatis.Survey";
	@Autowired
	private SqlSession sqlSession;

	// by성택_진행/마감 설문 리스트 가져오기_20200608
	public List<SurveyDTO> list(String state) {
		return sqlSession.selectList(namespace + ".listAll", state);
	}

	// by성택_내가 만든 설문 리스트 가져오기_20200609
	public List<SurveyDTO> myList(String empNo) {
		return sqlSession.selectList(namespace + ".myList", empNo);
	}

	// by성택_작성한 설문 등록_20200609
	public void input(SurveyDTO dto) {
		sqlSession.insert(namespace + ".input", dto);
	}

	// by성택_클릭한 설문 내용 dto_20200610
	public SurveyDTO survey(String title) {
		return sqlSession.selectOne(namespace + ".survey", title);
	}
	
	// by성택_설문 상태 마감으로 변경_20200611
	public void endChk(SurveyDTO dto) {
		sqlSession.update(namespace + ".endChk", dto);
	}

	// ==========================================================================
	// by성택_설문 결과 등록_20200610
	public void inputResult(SurveyResultDTO dto) {
		sqlSession.insert(namespace + ".inputResult", dto);
	}

	// by성택_설문 참여 여부_20200608
	public int resultChk(SurveyResultDTO dto) {
		return sqlSession.selectOne(namespace + ".resultChk", dto);
	}

	// by성택_설문 응답자 수_20200611
	public int resultAll(String title) {
		return sqlSession.selectOne(namespace + ".resultAll", title);
	}

	// by성택_옵션별 응답자 수_20200611
	public int answerCnt(SurveyResultDTO dto) {
		return sqlSession.selectOne(namespace + ".answerCnt", dto);
	}
}
