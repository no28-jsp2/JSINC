package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.ReportDTO;

@Repository
public class ReportDAO {

	private static final String namespace = "com.jsinc.mybatis.Report";
	
	@Autowired
	private SqlSession sqlSession;
	
	public void writeReport(ReportDTO dto) throws Exception{
		sqlSession.insert(namespace+".insert",dto);
	}
	public List<ReportDTO> listAll()throws Exception{
		return sqlSession.selectList(namespace+".listAll");
	}
	public ReportDTO read(int bno) throws Exception{
		return sqlSession.selectOne(namespace+".read",bno);
	}
	public void update(ReportDTO dto) throws Exception{
		sqlSession.update(namespace+".update",dto);
	}
	public void delete(int bno) throws Exception{
		sqlSession.delete(namespace+".delete",bno);
	}
}
