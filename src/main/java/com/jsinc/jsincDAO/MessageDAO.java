package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.MessageDTO;

@Repository
public class MessageDAO {
	private static final String namespace="com.jsinc.mybatis.message";
	@Autowired
	private SqlSession sqlSession;
	//JSinc_sendMsg 테이블에 저장됨
	public void sendMsg(MessageDTO dto) {
		sqlSession.insert(namespace+".sendMsg",dto);
	}
	//JSinc_recMsg테이블에 저장됨
	public void recMsg(MessageDTO dto) {
		sqlSession.insert(namespace+".recMsg",dto);
	}
	//보낸 메세지를 가져옴
	public List<MessageDTO> sentView(int empNo){
		return sqlSession.selectList(namespace+".sentView",empNo);
	}
	//보낸 메세지 삭제
	
	//받은 메세지 가져옴
	public List<MessageDTO> recView(int recEmpNo){
		return sqlSession.selectList(namespace+".recView",recEmpNo);
	}
	//받은 메세지 삭제
	

}
