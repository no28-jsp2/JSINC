package com.jsinc.jsincDAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.MemberDTO;

// 사원정보 관련 DAO
@Repository
public class MemberDAO {
	private static final String namespace = "com.jsinc.mybatis.Member";
	@Autowired
	private SqlSession sqlSession;

	// by성택_입력된 사원번호의 사원정보 가져오기_20200521
	public MemberDTO memberInfo(String empNo) {
		return sqlSession.selectOne(namespace + ".memberInfo", empNo);
	}

	// by해준_사원번호가 존재하는지 확인_20200522
	public int empNumChk(MemberDTO dto) throws Exception {
		int result = sqlSession.selectOne(namespace + ".empNumChk", dto.getEmpNo());
		return result;
	}

	// by해준_이메일이 존재하는지 확인_20200522
	public int emailChk(String userEmail) throws Exception {
		int result = sqlSession.selectOne(namespace + ".emailChk", userEmail);
		return result;
	}

	// by해준_회원가입_20200522
	public void memReg(MemberDTO dto) throws Exception {
		sqlSession.insert(namespace + ".regMem", dto);
	}

	// by해준_임시 비밀번호 초기화_20200529
	public void sentPw(MemberDTO dto) throws Exception {
		sqlSession.update(namespace + ".newPw", dto);
	}

	// by성택_사원 프로필 수정_20200528
	public void editProfile(MemberDTO dto) throws Exception {
		sqlSession.update(namespace + ".editProfile", dto);
	}

	// by성택_비밀번호 변경_20200528
	public void passwordChange(MemberDTO dto) {
		sqlSession.update(namespace + ".passwordChange", dto);
	}

}
