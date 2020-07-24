package com.jsinc.master;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.CommunityDTO;
import com.jsinc.jsincDTO.MemberDTO;
import com.jsinc.jsincDTO.SurveyDTO;

// 관리자 DAO
@Repository
public class MasterDAO {
	private static final String namespace = "com.jsinc.mybatis.Master";
	@Autowired
	private SqlSession sqlSession;
	
	// 사원 관리
	// by성택_회사 전 사원 리스트_20200613
	public List<MemberDTO> list() {
		return sqlSession.selectList(namespace + ".listAll");
	}
	
	// by성택_사원 정보 가져오기_20200615
	public MemberDTO member(int empNo) {
		return sqlSession.selectOne(namespace + ".member", empNo);
	}

	// by성택_정보 수정_20200615
	public void edit(MemberDTO dto) {
		sqlSession.update(namespace + ".edit", dto);
	}
	
	// by성택_사원 삭제_20200615
	public void delete(int empNo) {
		sqlSession.delete(namespace + ".delete", empNo);
	}

	// 커뮤니티
	// by성택_커뮤니티 전체 리스트_20200616
	public List<CommunityDTO> listCom() {
		return sqlSession.selectList(namespace + ".comAll");
	}
	// by성택_커뮤니티 승인_20200616
	public void permissionCom(String title) {
		sqlSession.update(namespace + ".permissionCom", title);
	}
	// by성택_커뮤니티 승인취소/삭제_20200616
	public void delCom(String title) {
		sqlSession.delete(namespace + ".delCom", title);
	}

	// 설문
	// by성택_설문 전체 리스트_20200616
	public List<SurveyDTO> listSur() {
		return sqlSession.selectList(namespace + ".surAll");
	}
	// by성택_설문 승인_20200616
	public void permissionSur(String title) {
		sqlSession.update(namespace + ".permissionSur", title);
	}
	// by성택_설문 승인취소/삭제_20200616
	public void delSur(String title) {
		sqlSession.delete(namespace + ".delSur", title);
	}
}
