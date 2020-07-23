package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.ToDoListDTO;

// 스케줄 리스트 DAO
@Repository
public class ToDoListDAO {
	private static final String namespace = "com.jsinc.mybatis.todoList";
	@Autowired
	private SqlSession sqlSession;
	
	// by성택_오늘의 할일 리스트 가져오기_20200605
	public List<ToDoListDTO> list(ToDoListDTO dto){
		return sqlSession.selectList(namespace + ".listAll", dto);
	}
	
	// by성택_할일 추가_20200605
	public void add(ToDoListDTO dto) {
		sqlSession.insert(namespace + ".addList", dto);
	}
	
	// by성택_할일 완료_20200605
	public void check(ToDoListDTO dto) {
		sqlSession.update(namespace + ".check", dto);
	}
	
	// by성택_해당하는 할일 dto_20200606
	public ToDoListDTO editPage(String todo) {
		return sqlSession.selectOne(namespace + ".editPage", todo);
	}
	
	// by성택_수정_20200606
	public void edit(ToDoListDTO dto) {
		sqlSession.update(namespace + ".edit", dto);
	}
	// by성택_삭제_20200606
	public void delete(String todo) {
		sqlSession.delete(namespace + ".del", todo);
	}
}
