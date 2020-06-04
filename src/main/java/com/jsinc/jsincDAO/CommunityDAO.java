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
	
	public void create(CommunityDTO dto) {
		sqlSession.insert(namespace+".input",dto);
	}
	public List<CommunityDTO> allCom() {
		return sqlSession.selectList(namespace+".getAll");
	}
	public List<CommunityDTO> myCom(int empNo){
		System.out.println("dao:"+empNo);
		return sqlSession.selectList(namespace+".myCom",empNo);
	}
	

}
