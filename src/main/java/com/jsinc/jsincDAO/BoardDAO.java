package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.BoardDTO;

@Repository
public class BoardDAO {

	private static final String namespace = "com.jsinc.mybatis.Board";
	
	private SqlSession sqlSession;
	//게시글 등록
	public void create(BoardDTO dto) throws Exception{
		sqlSession.insert(namespace+".insert",dto);
	}
	//게시글 상세보기
	public BoardDTO view(int bno) throws Exception{
		return sqlSession.selectOne(namespace+".view",bno);
	}
	//게시글 수정
	public void update(BoardDTO dto) throws Exception{
		sqlSession.update(namespace+"update",dto);
	}
	//게시글 삭제
	public void delete(int bno) throws Exception{
		sqlSession.delete(namespace+".delete",bno);
	}
	
	//게시글 전체목록
	public List<BoardDTO> list() throws Exception {
		return sqlSession.selectList(namespace+".list");
	}
	
}
