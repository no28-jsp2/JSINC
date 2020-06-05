package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.CommunityDTO;

@Repository
public class CommunityDAO {
	private static final String namespace="com.jsinc.mybatis.community";
	@Autowired
	private SqlSession sqlSession;
	//커뮤니티 만들기
	public void create(CommunityDTO dto) {
		sqlSession.insert(namespace+".input",dto);
	}
	//전체 커뮤니티 보기
	public List<CommunityDTO> allCom() {
		return sqlSession.selectList(namespace+".getAll");
	}
	//내가 가입한 커뮤니티
	public List<CommunityDTO> myCom(int empNo){
		System.out.println("dao:"+empNo);
		return sqlSession.selectList(namespace+".myCom",empNo);
	}
	//커뮤니티 클릭 시 
	public CommunityDTO view(String title) {
		return sqlSession.selectOne(namespace+".view",title);
	}
	//커뮤니티 가입
	public void signUp(CommunityDTO dto) {
		sqlSession.insert(namespace+".signUp",dto);
	}
	//가입 하기 버튼 
	public int signBut(CommunityDTO dto) {
		return sqlSession.selectOne(namespace+".signBut",dto);
	}
	//가입여부 
	public List<CommunityDTO> joinOrNot(int empNo){
		return sqlSession.selectList(namespace+".joinOrNot",empNo);
	}
	
	//가입인원
	
	

}
