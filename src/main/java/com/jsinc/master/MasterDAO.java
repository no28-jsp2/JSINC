package com.jsinc.master;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.MemberDTO;

@Repository
public class MasterDAO {
	private static final String namespace = "com.jsinc.mybatis.Master";
	@Autowired
	private SqlSession sqlSession;
	
	public List<MemberDTO> list(){
		return sqlSession.selectList(namespace + ".listAll");
	}
}
