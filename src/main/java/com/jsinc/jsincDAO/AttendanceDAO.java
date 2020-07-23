package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.AttendanceDTO;

// 출&퇴근 DAO
@Repository
public class AttendanceDAO {
	private static final String namespace = "com.jsinc.mybatis.Attendance";
	@Autowired
	private SqlSession sqlSession;
	
	// by성택_출&퇴근 시간 기록_20200524
	public void input(AttendanceDTO dto) {
		sqlSession.insert(namespace + ".input", dto);
	}
	
	// by성택_출&퇴근 시간 리스트 가져오기_20200524
	public List<AttendanceDTO> list(String user) {
		return sqlSession.selectList(namespace + ".listAll", user);
	}
}
